FROM httpd:2.4.41

RUN cd /usr/local/apache2/conf/ &&\
    touch my.conf &&\
    echo "Alias /data /data" >> ./my.conf &&\
    echo "<Directory /data>" >> ./my.conf &&\
    echo "     Require all granted" >> ./my.conf &&\
    echo "</Directory>" >> ./my.conf &&\
    echo "Include conf/my.conf" >> ./httpd.conf

