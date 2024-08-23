#!/bin/bash

# proxychains -f ./tina/media/test/proxychains.conf  yarn dev | tee a.log
# yarn dev --verbose | tee a.log

yarn run dev | tee a.log
