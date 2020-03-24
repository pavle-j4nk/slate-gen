FROM ruby:latest

RUN apt-get update && apt-get install -y nodejs rsync \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1  https://github.com/slatedocs/slate.git /usr/src/app/

VOLUME /usr/src/app/doc_src
VOLUME /usr/src/app/build

WORKDIR /usr/src/app

RUN gem install bundler 
RUN bundle install

ADD build.sh .

ENTRYPOINT ["./build.sh"]
