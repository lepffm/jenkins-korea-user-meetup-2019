echo curl --user \$TOKEN -X POST -g \
"http://jenkins.meetup:8080/\
computer/SLAVE/api/xml?xpath=//offline[.='false']"

echo ''

curl --user $TOKEN -X POST -g \
"http://jenkins.meetup:8080/\
computer/SLAVE/api/xml?xpath=//offline[.='false']"

echo '\n'
