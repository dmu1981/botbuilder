cd ./stage/simulation && pwd && rm -rf *
cd ../bot && pwd && rm -rf *
cd ../.. && pwd
cp -r ../simulation/* stage/simulation
cp ../bot/target/debug/aptivbot stage/bot
cp ../bot/config.yaml stage/bot
cd stage && pwd && docker build -t bot/sim:0.1 .
