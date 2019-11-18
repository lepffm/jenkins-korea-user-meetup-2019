### init 
#docker volume create --name jenkins-public-volume

#export CASC_VOL="$(pwd)/casc_configs:/var/jenkins_home/casc_configs"
export HOSTALIAS="jenkins.meetup:127.0.0.1"
export NOPROXY="localhost,127.0.0.1,182.193.17.192"

docker run --rm -d --name jenkins-public --add-host "$HOSTALIAS" \
  -p 8080:8080 -p 50000:50000 \
  --env no_proxy=$NOPROXY \
  -v jenkins-public-volume:/var/jenkins_home \
  -v $(pwd)/plugins:/usr/share/jenkins/ref/plugins \
  docker.io/jenkins/jenkins:lts

#  --env CASC_JENKINS_CONFIG=/var/jenkins_home/casc_configs \
#  -v "$CASC_VOL" \

#docker stop jenkins

### casc config reference 
# https://github.com/jenkinsci/configuration-as-code-plugin/tree/master/demos
