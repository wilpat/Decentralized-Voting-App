var Election = artifacts.require('Election');

module.exports = function (deployer) {
	deployer.deploy(Election);//Add the Elections contract to the manifest of deployed contracts to ensure that it gets deployed when we run the migrations
}