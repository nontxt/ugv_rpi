FROM dtcooper/raspberrypi-os:python3.11


RUN pip install --no-cache-dir poetry==2.1.1

RUN poetry config virtualenvs.create false

WORKDIR /app
COPY pyproject.toml poetry.lock /app/
RUN touch README.md

ENV PYTHONPATH=.

RUN poetry install


COPY . /app/
EXPOSE 5000

CMD ["python", "app.py"]
