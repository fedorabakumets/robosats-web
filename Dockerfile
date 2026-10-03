FROM recksato/robosats-web:latest
USER root
# Upstream nginx serves /usr/src/web, but the image copies the client into /usr/src/robosats.
RUN ln -sfn /usr/src/robosats /usr/src/web
CMD ["nginx"]
