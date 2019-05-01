pragma solidity 0.5.1;

/**
* @title Test
* @notice A contract that rejects incoming ETH
**/
contract Test {
  function () external payable {
    revert();
  }

  function scoop() public {
    msg.sender.transfer(address(this).balance);
  }
}