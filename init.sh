#geth --datadir "./" init genesis.json
geth --datadir "./"  --nodiscover  2>>geth.log &

geth attach  ./geth.ipc << EOF
personal.newAccount("123")
miner.start(1)

EO%

killall geth
