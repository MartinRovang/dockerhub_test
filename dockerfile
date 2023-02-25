FROM python:3.11.1-slim



RUN apt-get update -qq && apt-get install -y --no-install-recommends


ENV POETRY_VERSION=1.3.2

RUN pip install "poetry==$POETRY_VERSION"
ENV PATH="${PATH}:/root/.poetry/bin"

WORKDIR /dockerhub_test

COPY ./poetry.lock ./pyproject.toml /dockerhub_test/
COPY tests /dockerhub_test/tests

RUN poetry install
