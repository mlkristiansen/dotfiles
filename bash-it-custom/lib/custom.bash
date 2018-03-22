#@IgnoreInspection BashAddShebang

## COPY
# cp -v ~/.dotfiles/bash-it-custom/lib/custom.bash ~/.bash_it/lib/

#export GRAILS_OPTS="-Xmx2G -Xms512m -Dfile.encoding=UTF-8 -Djava.encoding=UTF-8"
export GRAILS_OPTS="-Xmx2G -Xms512m -XX:MaxPermSize=512m -Dfile.encoding=UTF-8 -Djava.encoding=UTF-8"

# Switch between multiple java versions -> http://askubuntu.com/a/845300
# HACK!
#export JAVA_HOME="$(jrunscript -e 'java.lang.System.out.println(java.lang.System.getProperty("java.home").substring(0,java.lang.System.getProperty("java.home").length()-4));')"

export LC_ALL=da_DK.UTF-8

export BASH_IT_THEME='pure'

## Removes clock char from bash-it theme
export THEME_SHOW_CLOCK_CHAR=false


##
# Run all codenarc rules.
# Opens the respective reports if they fail.
# Run all tests if codenarc is happy!
# Opens the test report if any test fail.
##
#function runCodenarcCleanCheckExitIfFailure() {
#    success=true
#    if ! ./gradlew codenarcMain; then
#        xdg-open build/reports/codenarc/main.html &> /dev/null
#        success=false
#    fi
#    if ! ./gradlew codenarcTest; then
#        xdg-open build/reports/codenarc/test.html &> /dev/null
#        success=false
#    fi
#    if ! ./gradlew codenarcIntegrationTest; then
#        xdg-open build/reports/codenarc/integrationTest.html &> /dev/null
#        success=false
#    fi
#    # Exit if codenarc has failed
#    if ! $success; then
#        return 1
#    fi
#    notify-send 'Codenarc was successful'
#
#    # If all is well run all tests
#    if ! ./gradlew clean check; then
#        xdg-open build/reports/tests/index.html &> /dev/null
#        return 1
#    else
#        notify-send 'BUILD WAS SUCCESSFUL!'
#    fi
#}
#
#
#function runCleanTest() {
#    if ! ./gradlew clean test integrationTest; then
#        xdg-open build/reports/tests/index.html &> /dev/null
#        return 1
#    else
#        notify-send 'TEST WAS SUCCESSFUL!'
#    fi
#}
