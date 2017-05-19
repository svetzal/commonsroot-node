FROM phusion/passenger-nodejs
ENV HOME /root
RUN rm -f /etc/service/nginx/down
ADD webapp.conf /etc/nginx/sites-enabled/default
ADD app.js /home/app/app.js
ADD node_modules /home/app/node_modules
ADD public /home/app/public
CMD ["/sbin/my_init"]
