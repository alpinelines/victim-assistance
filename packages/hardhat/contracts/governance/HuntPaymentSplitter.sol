// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.4;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/finance/PaymentSplitterUpgradeable.sol";

contract HuntPaymentSplitter is PaymentSplitterUpgradeable, OwnableUpgradeable {

    function initialize(
        address[] memory _payees,
        uint256[] memory _shares
    ) 
        public
        onlyOwner
        initializer
    {
        __PaymentSplitter_init(_payees, _shares);
        _disableInitializers();
    }

    constructor() {
        __Ownable_init();
    }
    
}