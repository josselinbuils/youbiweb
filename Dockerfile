FROM mattrayner/lamp:latest-1804

COPY . .
WORKDIR .

CMD ["/run.sh"]
