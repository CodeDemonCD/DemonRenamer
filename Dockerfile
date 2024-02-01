FROM python:3.10
WORKDIR /app
COPY . /app/
RUN pip install -r requirements.txt
# Download ffmpeg
RUN wget -O ffmpeg https://example.com/ffmpeg
CMD ["python", "bot.py"]
