var OrigoToken = artifacts.require("OrigoToken");

module.exports = function(deployer) {
    deployer.deploy(OrigoToken);
};