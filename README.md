# GitHubFollowers

Это мой самый крупный учебный проект, в котором я постарался показать большую часть своих навыков и знаний в iOS разработке.
Особенности моего приложения:
* 100% Programmatic UI (Весь UI написан в коде. Storyboard удален из проекта)
* Выбрал паттерн MVC. В определенной мере старался следовать принципам SOLID
* Выполнено исключительно средствами Swift без каких-либо зависимостей и сторонних библиотек
* Для передачи информации между классами использовались илициализаторы, синглтоны и делегаты с протоколами
* Сохранение данных с помощью UserDefaults
* Использование кэша. Аватары и ники пользователей сохраняются в кэше и не подгружаются сотнями каждый раз при пролистывании галереи подписчиков
* В коде использованы методы из новых iOS (например, UICollectionViewDiffableDataSource для плавной анимации ячеек во время поиска)
* Все компоненты UI созданы с поддержкой темного оформления
* Созданы кастомные элементы UI (кнопки, alert VC, ячейки для collectionView и tableView и т.д.)
* Вся история разработки описана в комментариях к коммитам
* На текущий момент я продолжаю улучшать и оптимизировать приложение, попутно исправляю баги :)

## Возможности

Приложение GitHubFollowers позволяет *(нажмите "подробнее", чтобы посмотреть GIF)*:
* Просматривать подписчиков любого пользователя GitHub
* Найти на стартовом экране любого пользователя GitHub и сразу перейти к collectionView c его подписчиками
    <details>

    ![1](https://github.com/abelorukavsky/GitHubFollowers/blob/master/GitHubFollowers/Support/gifs/1.gif)
    </details>

* Листать collectionView с подписчикам из 100 ячеек в 3 столбца до самого низа, после чего подгружаются следующие 100 ячеек с подписчиками и т.д., пока не отобразятся все подписчики у конкретного пользователя.
    <details>

    ![2](https://github.com/abelorukavsky/GitHubFollowers/blob/master/GitHubFollowers/Support/gifs/2.gif)
    </details>
  
* Искать в collectionView подписчика по нику с помощью search bar
    <details>

    ![3](https://github.com/abelorukavsky/GitHubFollowers/blob/master/GitHubFollowers/Support/gifs/3.gif)
    </details>
  
* Нажимать в collectionView на ячейку любого подписчика и просматривать экран с подробной информацией об этом подписчике
    <details>

    ![4](https://github.com/abelorukavsky/GitHubFollowers/blob/master/GitHubFollowers/Support/gifs/4.gif)
    </details>
  
* Из экрана с подробной информацией по нажатию кнопки "GitHub Profile" переходить в GitHub-профиль подписчика с помощью SafariViewController
    <details>

    ![5](https://github.com/abelorukavsky/GitHubFollowers/blob/master/GitHubFollowers/Support/gifs/5.gif)
    </details>
  
* Из экрана с подробной информацией по нажатию кнопки "Get Followers" переходить в collectionView с подписчиками выбранного человека
    <details>

    ![6](https://github.com/abelorukavsky/GitHubFollowers/blob/master/GitHubFollowers/Support/gifs/6.gif)
    </details>
  
* Добавлять пользователей в экран Favorites. Избранные пользователи сохранаются с помощью UserDefaults
    <details>

    ![7](https://github.com/abelorukavsky/GitHubFollowers/blob/master/GitHubFollowers/Support/gifs/7.gif)
    </details>
    
* Переходить к подробному экрану подписчика из экрана Favorites и обратно
    <details>

    ![8](https://github.com/abelorukavsky/GitHubFollowers/blob/master/GitHubFollowers/Support/gifs/8.gif)
    </details>
  

### Установка

Для установки достаточно клонировать проект и запустить его в Xcode.
Требуется XCode 13 и выше.
Приложение написано для iOS 15.0. В дальнейшем добавлю совместимость с iOS влоть до 13.
Приложение создано для iPhone и пока не тестировалось на iPad и macOS.

## История версий

Я делал подробные коммиты со всеми изменениями по ходу создания приложения. Коммиты можно посмотерть здесь:
https://github.com/abelorukavsky/GitHubFollowers/commits/master

## License

This project is licensed under the MIT License.

## Благодарности

Вдохновение, обучение, примеры кода.
* [Sean Allen](https://github.com/SAllen0400)
* [Angela Yu](https://github.com/angelabauer)
* [Василий Усов](https://swiftme.ru/author/spectrum_admin/)
