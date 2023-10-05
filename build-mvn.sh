#! /bin/bash

mvn clean
mvn test
mvn clear package

# If you need skip test (mvn clear package -Dmaven.skip.test=true)