FROM alpine
RUN apk update&&apk add --no-cache wget
ADD run.sh /
RUN chmod +x /run.sh
CMD run.sh