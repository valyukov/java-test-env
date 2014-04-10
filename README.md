1. Установить rbenv, rvm или руби 2.1.0 https://rvm.io
2. Установить vagrant http://vagrantup.com
3. Клонировать данный репозитарий 
4. Установить необходимые для проекта гемфайлы
```bash
cd java-server
bundle 
```
5. Прописать свой репозитарий и бранч в attributes/default.rb
6. Выполнить 
```bash
kitchen verify 
```
7. После выполнить логин 
```bash
kitchen login 
```
8. В директории '/root/project' у вас должны находится тестовый отчёт и отчёт о покрытии
9. Директория содержит отчёты
10. ...
11. Profit!!!