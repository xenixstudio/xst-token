var XSToken = artifacts.require("./XSToken.sol");
module.exports = function(deployer) {
  deployer.deploy(XSToken, "xensor token", "XST", 10000000000, 18);
};