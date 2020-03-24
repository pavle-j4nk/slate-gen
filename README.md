# Introduction
This repository contains source for [slate-gen](https://hub.docker.com/r/pavlej/slate-gen)
docker image which generates documentation using [slate](https://github.com/slatedocs/slate)
without repository forking.  
Slate default `source` directory is used as a base, and 
user is able to override any file.

# Usage
1. Copy all customized files in empty `source` directory
For example `source/index.html.md` and `source/images/logo.png`
2. Generate documentation  
`docker run -v $(pwd)/source:/usr/src/app/doc_src -v $(pwd)/build:/usr/src/app/build pavlej/slate-gen:latest`
3. Documentation is available in `build` directory
