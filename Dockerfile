FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt ./

RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && rm -rf /root/.cache/pip \
    && rm -rf /var/lib/apt/lists/*

COPY . .

EXPOSE 7007

ENTRYPOINT ["python", "main.py"]
