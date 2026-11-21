FROM alpine:3.20
COPY app.bin /app
COPY app/emit-junit /emit-junit
EXPOSE 3000
ENTRYPOINT ["/app"]
