## MoodNft - Dynamic NFT Project
 **Overview**
MoodNft is a dynamic Non-Fungible Token (NFT) project built using Foundry, allowing users to mint NFTs that can change their mood and appearance based on specific interactions or conditions.
Features

Create and mint dynamic mood-based NFTs
Update NFT state programmatically
Fully tested smart contract implementation
Deployed on multiple blockchain networks

## Prerequisites

Foundry
Solidity ^0.8.19
cast
forge

## Installation

Clone the repository:

bashCopygit clone https://github.com/yourusername/MoodNft.git
cd MoodNft

Install dependencies:

bashCopyforge install
Project Structure
CopyMoodNft/
│
├── src/                  # Smart contract source files
│   ├── MoodNft.sol       # Main NFT contract
│   └── libraries/        # Supporting libraries
│
├── test/                 # Foundry test files
│   ├── MoodNftTest.sol   # Unit and integration tests
│
├── script/               # Deployment and interaction scripts
│   ├── DeployMoodNft.s.sol
│   └── Interactions.s.sol
│
├── foundry.toml          # Foundry configuration
└── remappings.json       # Library remappings
Contracts
MoodNft.sol
The core NFT contract with dynamic mood-changing capabilities:

Mint new NFTs
Update NFT mood states
SVG image generation based on mood

Testing
Run comprehensive tests using Foundry:
bashCopy# Run all tests
forge test

# Run specific tests
forge test --match-test testMoodChange

# Get test coverage
forge coverage
Deployment
Local Deployment
bashCopy# Deploy to local anvil chain
forge script script/DeployMoodNft.s.sol

# Deploy to specific network
forge script script/DeployMoodNft.s.sol --rpc-url $RPC_URL
Environment Variables
Create a .env file with:
CopyRPC_URL=your_rpc_endpoint
PRIVATE_KEY=your_private_key
Interactions
Use Foundry's cast for contract interactions:
bashCopy# Mint a new MoodNft
cast send $CONTRACT_ADDRESS "mintNft()" --private-key $PRIVATE_KEY

# Change NFT mood
cast send $CONTRACT_ADDRESS "changeMood(uint256 tokenId)" $TOKEN_ID
Contributing

Fork the repository
Create your feature branch (git checkout -b feature/AmazingFeature)
Commit your changes (git commit -m 'Add some AmazingFeature')
Push to the branch (git push origin feature/AmazingFeature)
Open a Pull Request

## License
Distributed under the MIT License. See LICENSE for more information.