pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

  event SetGreeting(address sender, string greeting);

  string public greeting = "Hello";

  constructor() {
    // what should we do on deploy?
  }

  function setGreeting(string memory newGreeting) public {
      greeting = newGreeting;
      console.log(msg.sender,"set greeting to",greeting);
      emit SetGreeting(msg.sender, greeting);
  }
}
