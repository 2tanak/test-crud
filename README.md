стек: 
php 8
mysql 5.7
apache 2.4

пароли 
доступ к админке 
http://localhost/admin
email admin@mail.ru
пароль 12345678


инструкции как запустить:
1)после запуска будет доступен по http://localhost, важно чтоб запускался без портов, только 80 по умолчанию

2) запустить команды по созданию библиотек vendor и node_modules

3) команду php artisan build, для компиляции js и css через vite сборщик

4) технологии laravel позволяют создовать базу из миграции и seed, если вы знаете что это такое то вы можите ,используя эти команды создать и наполнить базу, если не знаете то я приложу дамп базы



что сделал:
1) админка , админка добовляет, удаляет и лбновляет посты, в качестве админки использовал и кастомизировал пакет admin-lte

2) создал таблицу blog и вспомогательную таблицу files, files хранит информацию и пути к изображению, основная таблица хранит иденфикаторы по внешнему ключу на таблицу files, две таблицы в соотвествии с правилами о нормализации базы данных

3)при загрузке изображения в таблицу files попадают пути к разным нарезкам изображения, есть формат large(большое) и формат small(маленькое).
на фронте на главной вывожу формат small а на полной информации - формат large

5) основная таблица связана с filles через orm-связи(ларавел), которые под копотом основаны на join запросах

6) пагинация, пагинация будет показана если больше 5 записей, вбейте в админке эти записи