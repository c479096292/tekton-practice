FROM python:3.7-alpine
MAINTAINER "cinus<cinus@gmail.com>"

WORKDIR /home

COPY  aa.py /home
COPY requirements /home

RUN pip install -r requirements -i https://mirrors.aliyun.com/pypi/simple


EXPOSE 9000

ENTRYPOINT ["python", "aa.py"]
