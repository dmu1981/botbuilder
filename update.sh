#!/bin/sh
cd ../ndarray && pwd && git pull
cd ../genetics && pwd && git pull
cd ../bot && pwd && git pull && cargo build
cd ../breeder && pwd && git pull && cargo build

