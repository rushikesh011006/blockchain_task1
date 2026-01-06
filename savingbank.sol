 // SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

 
 contract Savingbank

{
address  public   owner;

constructor()
 {
// to make the owner deployer
owner = msg.sender; }

function deposit () public payable {} 
function getBalance() public view returns(uint)
{
    return address(this).balance;
}
function withdraw(uint amount)external
{   require( msg.sender==owner);
    require(amount <= address(this).balance, "Insufficient balance");

    (bool  success,)=owner.call{value:amount}("");
    require ( success);}
}
