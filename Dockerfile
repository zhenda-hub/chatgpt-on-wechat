FROM python:3.9
WORKDIR /app
COPY requirements.txt .
COPY requirements-optional.txt .
RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ \
    && pip install -r requirements.txt \
    && pip install -r requirements-optional.txt
COPY . .
# 必须双引号
CMD ["python", "app.py"]
