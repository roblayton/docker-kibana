FROM nginx:1.7 
MAINTAINER Rob Layton hire@roblayton.com

# Install Kibana
ADD https://download.elasticsearch.org/kibana/kibana/kibana-3.0.1.tar.gz /tmp/kibana.tar.gz
RUN tar zxf /tmp/kibana.tar.gz && mv kibana-3.0.1/* /usr/share/nginx/html

ADD run.sh /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

CMD ["/usr/local/bin/run"]

EXPOSE 80
