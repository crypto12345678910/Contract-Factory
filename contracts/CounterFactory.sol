// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./Counter.sol";
import "@openzeppelin/contracts/proxy/Clones.sol";

contract CounterFactory {
    Counter[] public deployedCounters;

    address public immutable implementation;

    constructor() {
      implementation = address(new Counter());
    }

    event CounterDeployed(address _counterAddress);

    function deployCounter(uint256 _initialCounter) public {
        address payable clone = payable(Clones.clone(implementation));
        Counter counter = Counter(clone);
        counter.Initialize(_initialCounter);

        deployedCounters.push(counter);
        emit CounterDeployed(address(counter));
    }
}