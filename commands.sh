# Launching NFT Collection with Wallet Based Whitelist using Candy Machine V3

# Setup Solana Tool Suite
solana --version
solana-keygen --version

# Setup Sugar alpha version
# Download: https://github.com/metaplex-foundation/sugar/releases/tag/v2.0.0-beta.1
chmod 755 sugarCM3
./sugarCM3 --version

# Check your current directory
pwd
# /Users/kiem.tran/candy-machine-cnft

# Setup Wallets
## Owner: BcycxxuRVVhEHrxNUARtRTtmG4ow8RVsUE3xgXv2jwmE
solana-keygen new --outfile /Users/kiem.tran/candy-machine-cnft/CMV3Owner.json
## Creator: 8tQrmq49LadEnbr8Yb9yufSYcdvGpr9QXJ3gwnsU4vx
solana-keygen new --outfile /Users/kiem.tran/candy-machine-cnft/CMV3Creator.json

# Setup Solana CLI
solana config set --keypair /Users/kiem.tran/candy-machine-cnft/CMV3Owner.json
solana config set --url https://metaplex.devnet.rpcpool.com/
solana config get

# Fund Wallets
### Use this if airdrop does not work https://solfaucet.com/
solana airdrop 1 BcycxxuRVVhEHrxNUARtRTtmG4ow8RVsUE3xgXv2jwmE --url https://api.devnet.solana.com
solana airdrop 1 8tQrmq49LadEnbr8Yb9yufSYcdvGpr9QXJ3gwnsU4vx --url https://api.devnet.solana.com

solana balance BcycxxuRVVhEHrxNUARtRTtmG4ow8RVsUE3xgXv2jwmE --url https://api.devnet.solana.com
solana balance 8tQrmq49LadEnbr8Yb9yufSYcdvGpr9QXJ3gwnsU4vx --url https://api.devnet.solana.com

# Download Metaplex Sample NFT Collection
https://docs.metaplex.com/assets/files/assets-ff6bd873ecd07b49c86faf3c7aab82d2.zip

# Create Candy Machine V3 Config
./sugarCM3 create-config

# Upload Assets
./sugarCM3 upload

# Deploy Candy Machine V3
# Candy machine ID: HfrAubYtS8GxcCSMALBFDsGqCUWVsfh8Fi9kZy9YbuoF
./sugarCM3 deploy

# Verify Candy Machine V3
./sugarCM3 verify

# Mint Candy Machine V3
./sugarCM3 mint

# Calculate Merkle Roots
# https://tools.key-strokes.com/merkle-root
# OG Merkle Root: 8ad141b7ee85127a4e75a24a5978578bf6671156747e97765e5f752e6d72d393
# OG Wallet 1 - 5n4GKcTmZnwMM5BoF5BWrM3CmneP48hMSJrS3ywvNJmC
# OG Wallet 2 - J5exWbEoLpBX4Pvx8ffhC9qTofPHRRttBMW61esQLA1u

# WL Merkle Root: 2420a6738041daf3c04ae841170636c06e2434e201484312f57bad55603ecea8
# WL Wallet 1 - Ctu6aG8SjYR7eAP1UG3ThGtTy7BkxpN2TAjJn3Xq8fmD
# WL Wallet 2 - 44E9cf5BWhdVXJBJigSFPgC1gRgp89bFMj5Y4YHbcCAS

# Add Candy Guards to Candy Machine V3
./sugarCM3 guard add

# Show Candy Guards added Candy Machine V3
./sugarCM3 guard show

# Update Candy Guards added Candy Machine V3
./sugarCM3 guard update

# Setup Candy Machine V3 UI

# Copy env file
cp .env.example .env

# Install dependencies
npm install

# Run Candy Machine V3 UI
# http://localhost:3000
npm run dev