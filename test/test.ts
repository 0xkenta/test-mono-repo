import { ethers } from "hardhat";
import chai from "chai";
import { solidity } from "ethereum-waffle";
import { TestGovernance, TestToken, TestNFT } from "../typechain";
import { Signer } from "ethers";

chai.use(solidity);
const { expect } = chai;

describe("Token", () => {
  let deployer: Signer
  let user1: Signer
  let testToken: TestToken
  let testNFT: TestNFT
  let testGovernace: TestGovernance

  beforeEach(async () => {
    [deployer, user1] = await ethers.getSigners()
    testToken = await (await ethers.getContractFactory('TestToken')).deploy() as TestToken
    testNFT = await (await ethers.getContractFactory('TestNFT')).deploy() as TestNFT
    testGovernace = await (await ethers.getContractFactory('TestGovernance')).deploy(testToken.address, testNFT.address) as TestGovernance
  });

  it("test", async () => {
    console.log(testGovernace)
  })

});
