pragma solidity ^0.4.24;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'DistributorRole' to manage this role - add, remove, check
contract DistributorRole {
  using Roles for Roles.Role;

  // Define 2 events, one for Adding, and other for Removing
  event DistributorAdded(address indexed account);
  event DistributorRemoved(address indexed account);

  Roles.Role private ditributers;
  // Define a struct 'distributors' by inheriting from 'Roles' library, struct Role

  // In the constructor make the address that deploys this contract the 1st distributor
  constructor() public {
    _addDistributor(msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyDistributor() {
    require(isDistributor(msg.sender));
    _;
  }

  // Define a function 'isDistributor' to check this role
  function isDistributor(address account) public view returns (bool) {
    return ditributers.has(account);
  }

  // Define a function 'addDistributor' that adds this role
  function addDistributor(address account) public onlyDistributor {
    _addDistributor(msg.sender);
  }

  // Define a function 'renounceDistributor' to renounce this role
  function renounceDistributor() public {
    _removeDistributor(msg.sender);
  }

  // Define an internal function '_addDistributor' to add this role, called by 'addDistributor'
  function _addDistributor(address account) internal {
    ditributers.add(account);
    emit DistributorAdded(account);
  }

  // Define an internal function '_removeDistributor' to remove this role, called by 'removeDistributor'
  function _removeDistributor(address account) internal {
    ditributers.remove(account);
    emit DistributorRemoved(account);
  }

}