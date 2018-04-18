#@IgnoreInspection BashAddShebang

## COPY
# cp -v ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash ~/.bash_it/aliases/¡

## Navigation
alias srw='cd ~/workspace/simpel-registrering-web'

## Gradle
alias gwcc='./gradlew clean check'
alias gwct='./gradlew clean test integrationTest'
alias gwcodenarc='./gradlew codenarcMain codenarcTest codenarcIntegrationTest'
alias gw='./gradlew'
alias cleanPostgres='docker stop postgres && sudo rm -rf /tmp/postgres_data/ && docker start postgres'

## GRAILS
#alias gt='sdk switch && grails -reloading test --non-interactive'
alias gt='sdk switch && grails test-app -echoOut --non-interactive'
alias gr='sdk switch && grails run-app --non-interactive'
alias gc='sdk switch && grails clean-all && grails compile'
alias gct='sdk switch && grails clean-all && grails compile && grails test-app'
alias opentests='xdg-open target/test-reports/html/index.html'

## JAVA
## Replaced by sdkman
#alias useJava8='yes | sudo apt-get install oracle-java8-set-default && source ~/.bashrc'
#alias useJava7='yes | sudo apt-get install oracle-java7-set-default && source ~/.bashrc'

## Bash-It
## Just run install.sh again
#alias copyBashItCustom='cp -v ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash ~/.bash_it/aliases/ && cp -v ~/.dotfiles/bash-it-custom/lib/custom.bash ~/.bash_it/lib/ && source ~/.bashrc'

## Open reports
alias opentestreport='xdg-open build/reports/tests/index.html &> /dev/null'
alias opencobertura='xdg-open build/reports/cobertura/index.html &> /dev/null'

## GIT
alias pull="git pull"
alias push="git push"

# From: http://askubuntu.com/questions/409611/desktop-notification-when-long-running-commands-complete
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

## VIM
alias vi="vim"