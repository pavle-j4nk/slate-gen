#!/usr/bin/env bash

rsync -av doc_src/* source

bundle exec middleman build
