# Docker AOSP Builds

**Docker AOSP Builds** provides a containerized environment for building the Android Open Source Project (AOSP), simplifying setup and ensuring reproducible builds.

## 📦 Features

- AOSP build support in an isolated Docker environment.
- Uses `docker-compose` for container management.
- Allows configuring source paths via environment variables.

## 🚀 Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/n00byara/aosp_build_from_docker.git
cd aosp_build_from_docker
```

### 2. Configure environment variables

Create a `.env` file in the root of the project and specify the path to your AOSP source:

```env
PATH_TO_SOURCES=/full/path/to/sources
```

### 3. Build and run the container

```bash
docker-compose up --build -d
```

### 4. Access the container

```bash
docker exec -it aosp_builder bash
```

## ⚙️ Project Structure

- `Dockerfile` — defines the image for AOSP build.
- `docker-compose.yml` — configuration for container management.
- `.env` — file for specifying user-defined environment variables.

## 📝 Notes

- Ensure your system has sufficient resources (CPU, RAM, disk space) for building AOSP.
- It is recommended to use an SSD for storing source code and build outputs.

## 📄 License

This project is licensed under the MIT License.

---

# Docker AOSP Builds (на русском)

**Docker AOSP Builds** предоставляет контейнеризированную среду для сборки Android Open Source Project (AOSP), упрощая процесс настройки и обеспечивая воспроизводимость сборок.

## 📦 Особенности

- Поддержка сборки AOSP в изолированной Docker-среде.
- Использование `docker-compose` для управления контейнерами.
- Возможность настройки путей к исходным кодам через переменные окружения.

## 🚀 Быстрый старт

### 1. Клонирование репозитория

```bash
git clone https://github.com/n00byara/aosp_build_from_docker.git
cd aosp_build_from_docker
```

### 2. Настройка переменных окружения

Создайте файл `.env` в корне проекта и укажите путь к исходному коду AOSP:

```env
PATH_TO_SOURCES=/полный/путь/к/исходникам
```

### 3. Сборка и запуск контейнера

```bash
docker-compose up --build -d
```

### 4. Доступ к контейнеру

```bash
docker exec -it aosp_builder bash
```

## ⚙️ Структура проекта

- `Dockerfile` — определяет образ для сборки AOSP.
- `docker-compose.yml` — конфигурация для управления контейнерами.
- `.env` — файл для указания пользовательских переменных окружения.

## 📝 Примечания

- Убедитесь, что у вас достаточно ресурсов (CPU, RAM, дисковое пространство) для сборки AOSP.
- Рекомендуется использовать SSD для хранения исходных кодов и результатов сборки.

## 📄 Лицензия

Этот проект распространяется под лицензией MIT.