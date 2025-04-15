
async function main() {
    const [deployer] = await ethers.getSigners();
    const RaceCollectNFT = await ethers.getContractFactory("RaceCollectNFT");
    const nft = await RaceCollectNFT.deploy();
    await nft.deployed();
    console.log("NFT deployed to:", nft.address);
}
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
