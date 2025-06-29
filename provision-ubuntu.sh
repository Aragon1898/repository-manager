#!/bin/bash

# Обновление системы
sudo apt-get update
sudo apt-get upgrade -y

# Установка Git
sudo apt-get install -y git

# Установка Node.js и npm
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Установка необходимых пакетов для приложения
mkdir /home/vagrant/repo-manager
cd /home/vagrant/repo-manager
npm init -y
npm install react react-dom typescript electron axios isomorphic-git @octokit/rest

# Установка TypeScript глобально
npm install -g typescript

# Клонирование репозитория
git clone https://github.com/Aragon1898/repository-manager.git /home/vagrant/repository-manager