# Проверка наличия Scoop
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    # Установка Scoop
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser 
    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
}

# Установка Git
scoop install git

# Установка Node.js
scoop install nodejs

# Установка необходимых пакетов для приложения
mkdir C:\repository-manager
cd C:\repository-manager
npm init -y
npm install react react-dom typescript electron axios isomorphic-git @octokit/rest

# Установка TypeScript глобально (если нужно)
npm install -g typescript

# Клонирование репозитория
git clone https://github.com/Aragon1898/repository-manager.git C:\repository-manager