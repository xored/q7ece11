set TUTORIAL_HOME=..

set gitRepoDir=.
set resultsDir=%TUTORIAL_HOME%\runner-data
set autLocation=%TUTORIAL_HOME%\eclipse
set q7location=%TUTORIAL_HOME%\q7
set q7project=%gitRepoDir%\q7tests
set q7licenseFile=%gitRepoDir%\q7-runner-license.l9

rem Clear results directory
rd /s /q %resultsDir%
md %resultsDir%


java -jar %TUTORIAL_HOME%\q7\plugins\org.eclipse.equinox.launcher_*.jar ^
    -application com.xored.q7.runner.headless ^
    -data %resultsDir%\runner-workspace/ ^
    -licenseFile %q7licenseFile% ^
    -aut %autLocation% ^
    -autWsPrefix %resultsDir%\aut-ws- ^
    -autConsolePrefix %resultsDir%\aut-console- ^
    -htmlReport %resultsDir%\q7report.html ^
    -junitReport %resultsDir%\q7report.xml ^
    -import %q7project%
