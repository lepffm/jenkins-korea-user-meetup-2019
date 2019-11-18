export HOSTALIAS="jenkins.meetup:127.0.0.1"
export NOPROXY="localhost,127.0.0.1,192.168.56.102,182.193.17.192,jenkins.meetup"
export http_proxy=
export no_proxy=$NOPROXY

export JNLP_PROTOCOL_OPTS=-Dorg.jenkinsci.remoting.engine.JnlpProtocol3.disabled=false
export JENKINS_SECRET=$(cat secret-file)
#docker run -d --rm --name slave --add-host "$HOSTALIAS"\
#  --env no_proxy=$NOPROXY --env http_proxy= \
#  jenkins/jnlp-slave -workDir=/home/jenkins/agent -url http://192.168.56.102:8080 $JENKINS_SECRET SLAVE

#export JENKINS_URL=http://192.168.56.102:8080
export JENKINS_URL=http://jenkins.meetup:8080

nohup java -jar slave/agent.jar -jnlpUrl $JENKINS_URL/computer/SLAVE/slave-agent.jnlp -secret $JENKINS_SECRET -workDir "/home/jenkins/agent" >> slave/slave.log 2>&1 &
#
