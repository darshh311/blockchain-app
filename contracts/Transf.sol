pragma solidity ^0.8.7;
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./Token.sol";

contract Transf{
    createToken public token;
    address owner;
    constructor(){
        address _token = 0xFb2648f867Dd1fF32bbEaB108ffC94630d2a2EED;
        token = createToken(_token);
        owner = msg.sender;
    }
    function mintToken(address _own) public {
        token.mint(_own);
    }
    function checkbalance(address _add) public view returns(uint256) {
        return token.balanceOf(_add);
    }
    // function transfer(address _rec, uint256 amount) public {
    //     uint256 balance = token.balanceOf(owner);
    //     require(amount <= balance, "balance low");
    //     token.transfer(_rec, amount);
    //     0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    // }
    function startvesting(address[] memory _addr) public {
        require(_addr.length <= 10, "you can enter upto 10 addresses only");
        uint256 rate = (token.totalSupply())/(_addr.length);
        rate = rate / (565600);
        for(uint i=0; i<_addr.length; i++){
            vest(_addr[i], rate);
        }

    }
    function vest(address _account, uint256 rate) internal {
        token.transfer(_account, rate);
    }

}