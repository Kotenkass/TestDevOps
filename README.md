# TestDevOps
DevOps test task

Задание выполнялось в качестве тестого задание на позицию Junior DevOps.
Цель Поднять docker image с сервером Centos7,php, nodejs,apache2 и приложение simplephpapp через описание dokerfile.

Запуск. 
1. Скачать все содержимое в произвольную папку.
2. Перейти в консоле в эту папку
3. В консоле начать создавать docker image
sudo docker docker build -t  nikolaev:v0.121 .
4 далее нам необходимо дождаться окончания и запустить docker image.
 docker run -d nikolaev:v0.121 . 
 далее перейти в браузере в 
 ваш ip:443/simplephpapp/
