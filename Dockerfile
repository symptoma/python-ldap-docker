FROM python:3.11

RUN apt-get update \
    && apt-get install -y build-essential python3-dev \
    libldap2-dev libsasl2-dev slapd ldap-utils tox \
    lcov valgrind \
    && rm -rf /var/lib/apt/lists/*
RUN pip install python-ldap==3.4.3
