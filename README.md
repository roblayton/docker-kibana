docker-kibana
=============

```
# build the image
docker build -t kibana .

# run
docker run -e ES_HOST=<BOOT2DOCKERIP> -e ES_PORT=9200 -d -p 80:80 --name kibana -t kibana

# Now test that the entire elk system is working
# ssh into the host machine
boot2docker ssh

# write to the data/log directory
sudo touch /data/log/test.log
echo 'time="2015-02-28T23:00:05Z" level="info" msg="This is a test"' >> /data/log/test.log

# navigate to kibana at http://<BOOT2DOCKERIP>
```
