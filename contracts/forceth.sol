pragma solidity 0.5.1;

/**
* @title forceth
* @notice A factory contract that creates a depositor and self destructs it to a destination,
* forcing the ether sent to the depositor on creation to be deposited to the destination address.
*
* This can be used to send ether to a contract that has no payable function, or would
* have an undesirable result should a normal ether transfer be made.
**/
contract Forceth {
  function sendTo(address payable destination) public payable {
    require(destination != address(this), "Destination cannot be forceth");
    (new Depositor).value(msg.value)(destination);
  }
}

contract Depositor {
  constructor(address payable destination) public payable {
    selfdestruct(destination);
  }
}