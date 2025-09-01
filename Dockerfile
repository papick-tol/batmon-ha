# Використовуємо Python 3.11 slim
FROM python:3.11-slim

# Створюємо робочу директорію
WORKDIR /app

# Копіюємо весь код Batmon
COPY . .

# Встановлюємо залежності Python
RUN pip install --no-cache-dir -r requirements.txt

# Створюємо робоче середовище для BLE (якщо потрібно)
RUN pip install --no-cache-dir bleak paho-mqtt PyYAML

# Створюємо точку входу
CMD ["python3", "main.py"]
