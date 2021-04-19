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
  --rpc-port 8899 \
  --entrypoint testnet.solana.com:8001 \
  --log ~/solana-validator.log \
  --dynamic-port-range 11000-11050
```

Confirm your validator connected to the network by opening a new terminal and running:

```
solana-gossip spy --entrypoint testnet.solana.com:8001
```


---
