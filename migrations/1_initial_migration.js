// const Token = artifacts.require("createToken");

// module.exports = function (deployer) {
//   deployer.deploy(Token);
// };
const Transf = artifacts.require("Transf");

module.exports = function (deployer) {
  deployer.deploy(Transf);
};