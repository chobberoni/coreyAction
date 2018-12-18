FROM ruby:2

LABEL "name"="CoreyUp Action"
LABEL "version"="1.0.0"

LABEL "com.github.actions.icon"="message-circle"
LABEL "com.github.actions.color"="green"
LABEL "com.github.actions.name"="CoreyUP Action"
LABEL "com.github.actions.description"="Corey is on a rocketship"

RUN gem install ruby_cowsay

COPY cow.rb /bin/cowsay

ENTRYPOINT ["cowsay"]
