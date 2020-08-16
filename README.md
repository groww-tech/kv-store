# Kvstore example

Tendermint built-in application sample.


## Run
Require [tendermint](https://docs.tendermint.com/master/introduction/install.html) installed.

```bash
go build

tenermint init

./kvstore
```

Open new console tab.
```bash
curl -s 'localhost:26657/broadcast_tx_commit?tx="author=giansalex"'
curl -s 'localhost:26657/abci_query?data="author"'
```