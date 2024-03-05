FROM ubuntu:20.04
RUN useradd -m myuser
USER myuser
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl=7.68.0-1ubuntu2.5 \
    && curl -O http://example.com/bigfile \
    && echo "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  bigfile" | sha256sum -c - \
    && rm -rf /var/lib/apt/lists/*
COPY . /app
CMD ["python", "./app/my_script.py"]
