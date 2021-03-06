<p align="center">
  <a href="https://solana.com">
    <img alt="Solana" src="https://i.imgur.com/uBVzyX3.png" width="250" />
  </a>
</p>

---

# Build 🛠

Install `git`, `docker` and `docker-compose`.

Git clone this repository.


Run bash script:

```
bash install.sh
```

---

# Using 👏

Run bash script (command execution environment):

```
bash terminal.sh
```

### System Tuning

The daemon (solana-sys-tuner) is included in the solana binary release. Restart it, before restarting your validator, after each software upgrade to ensure that the latest recommended settings are applied.

To run it:

```
sudo solana-sys-tuner --user $(whoami) > sys-tuner.log 2>&1
```

### Create keys

Run commands (at first start):

```
solana-keygen new -o ~/validator-keypair.json
```
```
solana config set --keypair ~/validator-keypair.json
```
```
solana-keygen new -o ~/vote-account-keypair.json
```
```
solana create-vote-account ~/vote-account-keypair.json ~/validator-keypair.json
```

### Launch

Run command:

```
solana-validator \
  --identity ~/validator-keypair.json \
  --vote-account ~/vote-account-keypair.json \
  --no-untrusted-rpc \
  --ledger ~/validator-ledger \
  --rpc-port 8899 \
  --dynamic-port-range 11000-11050 \
  --entrypoint entrypoint.testnet.solana.com:8001 \
  --expected-genesis-hash 4uhcVJyU9pJkvQyS88uRDiswHXSCkY3zQawwpjk2NsNY \
  --wal-recovery-mode skip_any_corrupted_record \
  --limit-ledger-size \
  --log ~/solana-validator.log \
  --no-poh-speed-test 
```

Confirm your validator connected to the network by opening a new terminal and running:

```
solana-gossip spy --entrypoint entrypoint.testnet.solana.com:8001
```


---
