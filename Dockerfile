# Dockerfile

FROM python:3.10-alpine

LABEL maintainer="Adview"

ENV PYTHONFAULTHANDLER=1 \
    PYTHONHASHSEED=random \
    PYTHONUNBUFFERED=1 \
    PIP_DEFAULT_TIMEOUT=100 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_NO_CACHE_DIR=1 \
    POETRY_VERSION=1.7.0

WORKDIR /app

# 安裝基本套件
RUN apk add --no-cache \
    curl \
    bash

# 安裝Poetry
RUN pip install "poetry==$POETRY_VERSION"

# 設置啟動命令
CMD ["bash"]
