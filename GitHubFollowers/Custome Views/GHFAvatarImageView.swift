//
//  GHFAvatarImageView.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 21.12.2021.
//

import UIKit

class GHFAvatarImageView: UIImageView {
    
    let cache = NetworkManager.shared.cache
    let placeHolderImage = UIImage(named: "avatar-placeholder")!

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func downloadImage(from urlString: String) {
        
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey) {
            self.image = image
            return
            // если изображение уже в кэше, ставим его в ячейку через configure в этом классе. Если изображения нет в кэше, return не срабатывает и код выполняется дальше (скачиваем изображение)
        }
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self = self else { return }
            
            if error != nil { return } // не обрабатываем ошибки, потому что в случае, если изображение не загрузилось, в ячейке FollowerCell на экране FollowerListVC вместо изображения будет placeHolderImage из ассетов
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { return }
            guard let data = data else { return }
            
            guard let image = UIImage(data: data) else { return }
            
            self.cache.setObject(image, forKey: cacheKey) // если изображение загрузилось, оно сразу добавляется в кэш
            
            DispatchQueue.main.async { // UI всегда обновляем в main thread
                self.image = image
            }

        }
        
        task.resume()
    }

}
