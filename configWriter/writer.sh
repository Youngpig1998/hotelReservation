#! /bin/sh
touch /var/configFiles/config.json

echo { >> /var/configFiles/config.json
echo "\"consulAddress\"": "\"$LOGICNODEIP:8500\"", >> /var/configFiles/config.json
echo "\"jaegerAddress\"": "\"$LOGICNODEIP:6831\"", >> /var/configFiles/config.json
echo "\"FrontendIP\"": "\"$LOGICNODEIP\"", >> /var/configFiles/config.json
echo "\"FrontendPort\"": "\"5000\"", >> /var/configFiles/config.json
echo "\"GeoIP\"": "\"$LOGICNODEIP\"", >> /var/configFiles/config.json
echo "\"GeoPort\"": "\"8083\"", >> /var/configFiles/config.json
echo "\"GeoMongoAddress\"": "\"$DATANODEIP:30001\"", >> /var/configFiles/config.json
echo "\"ProfileIP\"": "\"$LOGICNODEIP\"", >> /var/configFiles/config.json
echo "\"ProfilePort\"": "\"8081\"", >> /var/configFiles/config.json
echo "\"ProfileMongoAddress\"": "\"$DATANODEIP:30002\"", >> /var/configFiles/config.json
echo "\"ProfileMemcAddress\"": "\"$DATANODEIP:31002\"", >> /var/configFiles/config.json
echo "\"RateIP\"": "\"$LOGICNODEIP\"", >> /var/configFiles/config.json
echo "\"RatePort\"": "\"8084\"", >> /var/configFiles/config.json
echo "\"RateMongoAddress\"": "\"$DATANODEIP:30003\"", >> /var/configFiles/config.json
echo "\"RateMemcAddress\"": "\"$DATANODEIP:31001\"", >> /var/configFiles/config.json
echo "\"RecommendIP\"": "\"$LOGICNODEIP\"", >> /var/configFiles/config.json
echo "\"RecommendPort\"": "\"8085\"", >> /var/configFiles/config.json
echo "\"RecommendMongoAddress\"": "\"$DATANODEIP:30004\"", >> /var/configFiles/config.json
echo "\"ReserveIP\"": "\"$LOGICNODEIP\"", >> /var/configFiles/config.json
echo "\"ReservePort\"": "\"8087\"", >> /var/configFiles/config.json
echo "\"ReserveMongoAddress\"": "\"$DATANODEIP:30005\"", >> /var/configFiles/config.json
echo "\"ReserveMemcAddress\"": "\"$DATANODEIP:31003\"", >> /var/configFiles/config.json
echo "\"SearchIP\"": "\"$DATANODEIP\"", >> /var/configFiles/config.json
echo "\"SearchPort\"": "\"8082\"", >> /var/configFiles/config.json
echo "\"UserIP\"": "\"$LOGICNODEIP\"", >> /var/configFiles/config.json
echo "\"UserPort\"": "\"8086\"", >> /var/configFiles/config.json
echo "\"UserMongoAddress\"": "\"$DATANODEIP:30006\"" >> /var/configFiles/config.json
echo } >> /var/configFiles/config.json

  

  