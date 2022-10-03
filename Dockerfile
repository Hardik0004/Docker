FROM python

WORKDIR ./

copy ./ requirement.txt/requirement.txt

copy . /app

RUN pip install -r/app/requirement.txt

EXPOSE 80

CMD ["uvicorn", "app.main:app","--host","0.0.0.0"."--port" ]