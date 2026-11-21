FROM alpine:3.20
RUN seq 1 950000
COPY app.bin /app
COPY app/emit-junit /emit-junit
EXPOSE 3000
ENTRYPOINT ["/app"]
