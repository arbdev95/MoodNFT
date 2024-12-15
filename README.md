# 🌈 MoodNFT: Dynamic Emotional Expression on the Blockchain

## 📝 Project Description

MoodNFT is an innovative blockchain project that transforms digital art into a dynamic, emotionally responsive experience. Our unique Non-Fungible Token (NFT) collection allows users to mint NFTs that can change mood and appearance based on on-chain interactions, creating a truly interactive digital art experience.

## ✨ Key Features

- 🎨 **Dynamic Visual Representation**: NFTs that visually change based on mood
- 🔄 **Mood Transformation**: Interactive mood-changing mechanisms
- 🔒 **Blockchain Security**: Built on Solidity with Foundry framework
- 🖼️ **SVG-Based Artwork**: Procedurally generated art that evolves

## 🛠 Technology Stack

- **Blockchain**: Ethereum
- **Smart Contract Language**: Solidity ^0.8.19
- **Development Framework**: Foundry
- **Testing**: Foundry Forge
- **Image Generation**: On-chain SVG rendering

## 🚀 Quick Start

### Prerequisites

- [Foundry](https://book.getfoundry.sh/) installed
- Ethereum wallet (MetaMask recommended)
- Basic understanding of blockchain and NFTs

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/MoodNFT.git
cd MoodNFT
```
2. Install dependencies:
 ```bash
forge install
```
3. Compile contracts:
```bash
forge build
```

## 📂 Project Structure

MoodNFT/
│
├── src/                  # Smart contract sources
│   ├── MoodNFT.sol       # Main NFT contract
│   └── libraries/        # Supporting contract libraries
│
├── test/                 # Foundry test suite
│   ├── MoodNFTTest.sol   # Unit and integration tests
│   └── mocks/            # Test mock contracts
│
├── script/               # Deployment scripts
│   ├── DeployMoodNFT.s.sol
│   └── Interactions.s.sol
│
├── foundry.toml          # Foundry configuration
└── remappings.json       # Library remappings

## 🧪 Testing

Run comprehensive test suites:

# Run all tests
```bash
forge test

# Run specific test
forge test --mt testMoodChange

# Generate test coverage
forge coverage
```

## 🌐 Deployment

**Local Deployment**
```bash
//Deploy to local Anvil blockchain
forge script script/DeployMoodNFT.s.sol

// Deploy to specific network
forge script script/DeployMoodNFT.s.sol --rpc-url $RPC_URL
```

## Environment Setup

Create a .env file:

RPC_URL=your_ethereum_rpc_endpoint
PRIVATE_KEY=your_deployment_private_key

## 🤝 Interactions & Usage

**Minting a MoodNFT**
```bash
// Mint new NFT
cast send $CONTRACT_ADDRESS "mintNft()" --private-key $PRIVATE_KEY

// Change NFT Mood
cast send $CONTRACT_ADDRESS "changeMood(uint256 tokenId)" $TOKEN_ID
```

## 🔮 Mood Transformation Mechanics

MoodNFT introduces a novel approach to NFT dynamics:

- Each NFT starts with a default mood
- Interactions can trigger mood changes
- Mood affects the visual representation of the NFT
- Mood changes are recorded on-chain

## 🚧 Roadmap

- Implement multiple mood states
- Create mood-based rarity system
- Develop mood interaction mechanisms
- Build web interface for mood management

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (git checkout -b feature/MoodEnhancement)
3. Commit your changes (git commit -m 'Add mood interaction')
4. Push to branch (git push origin feature/MoodEnhancement)
5. Open a Pull Request

## 📜 License

