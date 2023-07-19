require("@nomicfoundation/hardhat-toolbox");

const FORK_FUJI = true;
const FORK_MAINNET = false;
let forkingData = undefined;

if (FORK_MAINNET) {
  forkingData = {
    url: "https://api.avax.network/ext/bc/C/rpcc",
  };
}
if (FORK_FUJI) {
  forkingData = {
    url: "https://api.avax-test.network/ext/bc/C/rpc",
  };
}

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    hardhat: {
      gasPrice: 225000000000,
      chainId: !forkingData ? 43112 : undefined, //Only specify a chainId if we are not forking
      forking: forkingData
    },
    fuji: {
      url: 'https://api.avax-test.network/ext/bc/C/rpc',
      gasPrice: 225000000000,
      chainId: 43113,
      accounts: [
        // YOUR PRIVATE KEY HERE
        "1fcbaf882e2b4568825b0f43ae4637109b9b9f9b24516f8dbbd8dc7a3da1dbaf"
      ]
    },
    mainnet: {
      url: 'https://api.avax.network/ext/bc/C/rpc',
      gasPrice: 225000000000,
      chainId: 43114,
      accounts: [
        // YOUR PRIVATE KEY HERE
      ]
    }
  },
  etherscan: {
    apiKey: {
      avalancheFujiTestnet: 'C2HSMT2EGDK2IFHNUBI9YYFMM6B8D5S3XY',
    }
  }
}