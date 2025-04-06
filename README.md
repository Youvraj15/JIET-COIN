 💰 JIET Coin - Solana Devnet Token

Welcome to the official repository of **JIET Coin**, a custom token created on the Solana blockchain Devnet using Docker, Solana CLI, and Rust.

🔗 Project Links

- 🌐 Live Demo: https://explorer.solana.com/address/mntS6ZetAcdw5dLFFtLw3UEX3BZW5RkDPamSpEmpSbP?cluster=devnet



 🚀 Features
- ✅ Built on Solana Devnet
- ✅ Mintable & transferable token
- ✅ Metadata support (name, symbol, logo)
- ✅ Dockerized development environment

🧰 Requirements
- Docker
- Git
- WSL2 (for Windows users)

📦 Setup
 1. Clone the repo
```bash
git clone https://github.com/YOUR_USERNAME/jiet-coin.git
cd jiet-coin
```

 2. Build Docker Image
```bash
docker build -t heysolana .
```

 3. Run Solana Container
```bash
docker run -it --rm \
  -v $(pwd):/solana-token \
  -v $(pwd)/solana-data:/root/.config/solana \
  heysolana
```

 🧪 Minting JIET Coin
Inside the container, follow the Solana CLI steps to mint your devnet token.

 📤 Minting Tokens
```bash
spl-token create-account MINT_ADDRESS
spl-token mint MINT_ADDRESS 1000
```

 🔐 Token Authority Management
```bash
spl-token authorize MINT_ADDRESS mint --disable
spl-token authorize MINT_ADDRESS freeze --disable
```

🔄 Update Metadata
```bash
spl-token update-metadata MINT_ADDRESS uri https://your-updated-metadata.json
```

🧨 Burn Tokens
```bash
spl-token burn LPTokenAddress 100
```

🌍 Explore Your Token
Go to: [Solana Explorer - Devnet](https://explorer.solana.com/?cluster=devnet)  
Paste your token address to view it.


