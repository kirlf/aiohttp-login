FROM python:3.7
RUN pip install pipenv

WORKDIR /opt

COPY Pipfile* ./
RUN pipenv install --system && mkdir export
COPY ./ ./

CMD ["py.test"]