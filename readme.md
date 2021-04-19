<p align="center">
  <a href="https://solana.com">
    <img alt="Solana" src="https://i.imgur.com/uBVzyX3.png" width="250" />
  </a>
</p>

# Install

Git clone and install `docker` and `docker-compose`.

Run bash script:

```
bash install.sh
```

# Using

Run bash script:

```
bash terminal.sh
```

### Create keys:

Run command:

```
solana-keygen new -o ~/validator-keypair.json

```

### Launch

Run command:

```
solana-validator   --identity ~/validator-keypair.json   --vote-account ~/vote-account-keypair.json   --ledger ~/validator-ledger   --rpc-port 8899 --entrypoint testnet.solana.com:8001 --trusted-validator 5D1fNXzvv5NjV1ysLjirC4WY92RNsVH18vjmcszZd8on --limit-ledger-size   --log ~/solana-validator.log --dynamic-port-range 11000-11050
```
