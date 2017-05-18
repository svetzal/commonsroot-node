FROM phusion/passenger-nodejs
ENV HOME /root
RUN rm -f /etc/service/nginx/down
ADD webapp.conf /etc/nginx/sites-enabled/webapp.conf
ADD app.js /home/app/app.js
CMD ["/sbin/my_init"]
