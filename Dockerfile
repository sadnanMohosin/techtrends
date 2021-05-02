FROM python:2.7

WORKDIR /app

COPY ./techtrends/requirements.txt ./

RUN pip install -r requirements.txt

COPY ./techtrends ./

RUN python init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]