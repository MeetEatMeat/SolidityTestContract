# Solidity Test Contracts

## tx.origin_vs_msg.sender.sol
This is a demonstration contract for `Remix IDE` which demonstrate difference between return address from tx.origin and msg.sender

### How to use it
1. Deploy `TestTxOrigin` contract
2. Copy this address
3. Past copied address into field with `Deploy` button
4. Deploy `AttackingContract`
5. Type 1 ether (or other) into `Value` field
6. Press `Transact` button at `AttackingContract` instance
7. Looking for log into transaction info

## InterfaceAddressation_vs_Inheritance
This is a demonstration of difference between caller address if contract inherited and if used its interface

### How to use it
1. Deploy `InterfaceAddressation` contract
2. Copy this address
3. Past copied address into field with `Deploy` button
4. Deploy `TestAddressation` contract
5. Call `testInterfaceAddressation` function and then call `testInheritanceAddressation` function
6. Find `decoded output` or `logs` in transaction info, and compare msg.sender adresseses from both functions
