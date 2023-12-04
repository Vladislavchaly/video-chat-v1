# Використовуємо офіційний образ Node.js версії 14
FROM node:14

# Створення та встановлення робочого каталогу у контейнері
WORKDIR /usr/src/app

# Копіюємо package.json та package-lock.json та виконуємо npm install
COPY package*.json ./
RUN npm install

# Копіюємо всі файли з поточної директорії у контейнер
COPY . .

# Використання порту 3000 для веб-додатка
EXPOSE 3000

# Команда для запуску додатка
CMD ["npm", "start"]
