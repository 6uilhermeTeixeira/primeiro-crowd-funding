// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Crowdfunding {

    address public owner;

    address[] public funders;

    mapping(address => uint256) public addressToAmountFunders;

    event newFunding(address _from, uint256 _value);

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner() {
       require(msg.sender == owner, "Withdraw only by contract owner!");
       _;
    }

    function fund() public payable {
        funders.push(msg.sender);

        addressToAmountFunders[msg.sender] += msg.value;

        emit newFunding(msg.sender, msg.value);
    }

    function withdraw() public payable {
        
        payable(msg.sender).transfer(address(this).balance);

        for(uint256 i = 0; i < funders.length; i++){
            address addr = funders[i];

            addressToAmountFunders[addr] = 0;
        }

        funders = new address[](0);
    }


}