FROM scratch
COPY app.bin /app
COPY selftest.txt /selftest.txt
EXPOSE 3000
ENTRYPOINT ["/app"]
