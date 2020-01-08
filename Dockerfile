FROM ruby:2.6.3
MAINTAINER Jim <jim@jimb.cc>

RUN apt-get update && apt-get install -y net-tools libmariadb-dev
RUN gem install mysql2
RUN gem install faker

ADD mfloader.rb /home/
CMD ruby /home/mfloader.rb $DOCKER_HOST
#CMD ruby /home/solarstream.rb $USER $PASS $DBHOST








#FROM ubuntu:16.04
#MAINTAINER Jim <jim@jimb.cc>

#RUN apt-get update && apt-get install -y software-properties-common
#RUN apt-add-repository ppa:brightbox/ruby-ng
#RUN apt-get update && apt-get install -y ruby ruby-dev build-essential libssl-dev nano
#RUN gem install mongo
#RUN gem install tweetstream
#RUN gem install twitter
#RUN gem install awesome_print

#ADD solarstream.rb /home/
#CMD ["ruby", "/home/solarstream.rb", "solar", "S07Ar", "172.17.42.1"]
#sudo docker container run -e "DOCKER_HOST=$(ip -4 addr show docker0 | grep -Po 'inet \K[\d.]+')" c1fd87fad7d4