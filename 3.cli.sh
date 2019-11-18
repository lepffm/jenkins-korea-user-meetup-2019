echo java -jar slave/jenkins-cli.jar \
  -auth @secret -s "http://jenkins.meetup:8080" list-jobs
echo ""
java -jar slave/jenkins-cli.jar -logger SEVERE\
  -auth @secret -s "http://jenkins.meetup:8080" list-jobs
echo ""