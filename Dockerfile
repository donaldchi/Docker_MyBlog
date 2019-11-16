FROM python:3.8
ENV PYTHONUNBUFFERED 1  # 標準IOのバッファーを無効にする
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/