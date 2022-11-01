// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract createToken is ERC20{
    constructor() ERC20("XYZToken", "XYZ"){
    }
    function mint(address _owner) public{
        _mint(_owner, 10**26);
    }

}

// contract transf{
//     createToken public token;
//     address owner;
//     constructor(address _token){
//         token = createToken(_token);
//         owner = msg.sender;
//     }
//     function mintToken(address _own) public {
//         token.mint(_own);
//     }
//     function checkbalance(address _add) public view returns(uint256) {
//         return token.totalSupply();
//     }
//     function transfer(address _rec, uint256 amount) public {
//         //uint256 balance = token.balanceOf(owner);
//         //require(amount <= balance, "balance low");
//         token.transfer(_rec, amount);
//         // 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
//     }
//     uint256 count = 0;
//     uint256 deploymentTime = block.timestamp;
//     function enteraddress(address[] memory _addr) public {
//         require(_addr.length <= 10, "you can enter upto 10 addresses only");
//         uint256 rate = (token.totalSupply())/(_addr.length);
//         rate = rate / (565600);
//         while(token.balanceOf(msg.sender)>0){
//             for(uint i=0; i<_addr.length; i++){
//                 vest(_addr[i], rate);
//             }
//             count++;
//         }

//     }
//     function vest(address _account, uint256 rate) internal {
//         token.transfer(_account, rate);
//     }

// }