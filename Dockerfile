FROM ubuntu
COPY sample-app .
EXPOSE 8080
ENTRYPOINT [ "./sample-app" ]