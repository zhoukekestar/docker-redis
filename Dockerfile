
# @see https://hub.docker.com/r/library/redis/
FROM redis

ENV REDIS_PASSWORD your-password

COPY redis.conf /usr/local/etc/redis/redis.conf

# @see https://www.digitalocean.com/community/tutorials/how-to-secure-your-redis-installation-on-ubuntu-14-04
RUN echo "requirepass $REDIS_PASSWORD" >> /usr/local/etc/redis/redis.conf

# redis-server /usr/local/etc/redis/redis.conf --requirepass 123456
# CMD [ "redis-server", "/usr/local/etc/redis/redis.conf", "--requirepass $REDIS_PASSWORD" ]
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf"]

