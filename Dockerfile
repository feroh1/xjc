FROM python:3
WORKDIR /tom

COPY main.py .

RUN python3 main.py cf init && chmod +x ./*

EXPOSE 4040

CMD ["python3", "main.py", "server"]

USER 10001
