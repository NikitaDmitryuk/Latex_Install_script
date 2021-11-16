# Latex Install script

Installing the required packages for compiling latex files.

## Скрипт для Manjaro Linux

```shell
sudo bash latex_install.sh
```
перед запуском компиляции необходимо выключить conda, если она есть.
```shell
conda deactivate
```

## Docker

Подготовка:
```shell
sudo systemctl start docker
sudo usermod -a -G docker $USER
```
Затем перезагрузить

Сборка:
```shell
docker build -t <NAME> .
```

Или можно скачать готовый контейнер:

```shell
sudo systemctl start docker
docker pull 2109199812/latex_builder
```

Использование
```shell

```
