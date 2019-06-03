pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/PausableToken.sol";

contract OrigoToken is PausableToken {

    string public constant name = "Origo";
    string public constant symbol = "OGO";
    uint8 public constant decimals = 18;

    uint256 public constant INITIAL_SUPPLY = (10 ** 9) * (10 ** uint256(decimals));

    /**
    * @dev Constructor that gives msg.sender all of existing tokens.
    */
    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }

}

