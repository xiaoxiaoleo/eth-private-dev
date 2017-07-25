#geth --datadir "./" init genesis.json
geth --datadir "./"  --nodiscover  2>>geth.log

geth attach http://127.0.0.1:8545 << EOF
personal.newAccount("123")
miner.start(1)
EOF%
