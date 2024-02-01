FROM python:3.10

# Install ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg

WORKDIR /app
COPY . /app/
RUN pip install -r requirements.txt
CMD ["python", "bot.py"]
