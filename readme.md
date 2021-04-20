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
  --trusted-validator 5D1fNXzvv5NjV1ysLjirC4WY92RNsVH18vjmcszZd8on \
  --trusted-validator 7XSY3MrYnK8vq693Rju17bbPkCN3Z7KvvfvJx4kdrsSY \
  --trusted-validator Ft5fbkqNa76vnsjYNwjDZUXoTWpP7VYm3mtsaQckQADN \
  --trusted-validator 9QxCLckBiJc783jnMvXZubK4wH86Eqqvashtrwvcsgkv \
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
