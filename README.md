# Latex Install script

Installing the required packages for compiling latex files.

## Скрипт для Manjaro Linux

```shell
sudo bash latex_install.sh
```

## Docker

Подготовка:
```shell
sudo systemctl start docker
docker pull ubuntu:20.04
```

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
