#geth --datadir "./" init genesis.json
geth --datadir "./" --rpcaddr=127.0.0.1 --rpcport=8545 --nodiscover  2>>geth.log &

geth attach  ./geth.ipc << EOF
personal.newAccount("123")
miner.start(1)

EOF

killall geth
