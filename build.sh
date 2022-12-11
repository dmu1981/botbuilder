sudo service docker start
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 302364434270.dkr.ecr.eu-central-1.amazonaws.com

cp wait-for-it.sh stage/
cd ./stage/simulation && pwd && rm -rf *
cd ../bot && pwd && rm -rf *
cd ../.. && pwd
cp -r ../simulation/* stage/simulation
cp ../bot/target/debug/aptivbot stage/bot
cp ../bot/config.yaml stage/bot
cd stage && pwd && docker build -t 302364434270.dkr.ecr.eu-central-1.amazonaws.com/bot:bot0.6 . && docker push 302364434270.dkr.ecr.eu-central-1.amazonaws.com/bot:bot0.6
#cd stage && pwd && docker build -t 302364434270.dkr.ecr.eu-central-1.amazonaws.com/bot:bot0.4 .


cd ..
cp wait-for-it.sh breeder/
cp ../breeder/target/debug/rabbit-mq-test breeder/breeder
cd breeder && docker build -t 302364434270.dkr.ecr.eu-central-1.amazonaws.com/bot:breeder0.6 . && docker push 302364434270.dkr.ecr.eu-central-1.amazonaws.com/bot:breeder0.6
