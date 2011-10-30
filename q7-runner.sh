#! /bin/sh

TUTORIAL_HOME=..

gitRepoDir=./
resultsDir=$TUTORIAL_HOME/runner-data
autLocation=$TUTORIAL_HOME/eclipse
q7location=$TUTORIAL_HOME/q7
q7project=$gitRepoDir/q7tests
q7licenseFile=$gitRepoDir/q7-runner-license.l9

# Clear results directory
rm -fr $resultsDir
mkdir $resultsDir


java -jar $TUTORIAL_HOME/q7/plugins/org.eclipse.equinox.launcher_*.jar \
    -application com.xored.q7.runner.headless \
    -data $resultsDir/runner-workspace/ \
    -licenseFile $q7licenseFile \
    -aut $autLocation \
    -autWsPrefix $resultsDir/aut-ws- \
    -autConsolePrefix $resultsDir/aut-console- \
    -htmlReport $resultsDir/q7report.html \
    -junitReport $resultsDir/q7report.xml \
    -import $q7project
