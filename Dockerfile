FROM scratch
COPY app.bin /app
EXPOSE 3000
ENTRYPOINT ["/nonexistent-binary"]
