# blockchain_task1
Solidity Saving Bank Smart Contract
In this solidity contract Users can deposit Ether into the contract, and the contract owner (deployer) can withdraw
The ownership is assigned at the time of deployment.  
The address that deploys the contract is stored as the `owner`
Ownership is enforced in the `withdraw` function using a `require` statement to restrict access. Ether transfer is handled using `call`, which is the recommended approach in modern Solidity
