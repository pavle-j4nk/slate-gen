# Introduction
This repository contains source for [slate-gen]()
docker image which generates documentation using [slate](https://github.com/slatedocs/slate)
without repository forking.

# Usage
1. Build image  
`docker build -t slate-gen .`
2. Copy all customized files in `source` directory
3. Generate documentation  
`docker run -v $(pwd)/source:/usr/src/app/doc_src -v $(pwd)/build:/usr/src/app/build slate-build:latest`
