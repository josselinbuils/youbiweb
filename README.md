# Youbiweb

![Youbiweb](https://raw.githubusercontent.com/josselinbuils/youbiweb/master/Youbiweb.png)

```bash
docker build . --tag youbiweb
docker run -d -p "9000:80" youbiweb
```

http://0.0.0.0:9000/

http://0.0.0.0:9000/phpmyadmin

**user:** admin

**password:** see docker logs

Logs are in /var/log/apache2/error.log
