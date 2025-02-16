// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface IFlashLoanProvider {
    function flashLoan(uint256 amount) external;
}

contract FlashLoan is Ownable {
    using SafeMath for uint256;

    IFlashLoanProvider public flashLoanProvider;
    IERC20 public token;

    constructor(address _flashLoanProvider, address _token) {
        flashLoanProvider = IFlashLoanProvider(_flashLoanProvider);
        token = IERC20(_token);
    }

    function initiateFlashLoan(uint256 amount) external onlyOwner {
        flashLoanProvider.flashLoan(amount);
    }

    function executeLoanLogic(uint256 amount) external {
        // Logic to utilize the flash loan goes here

        // Repay the loan
        require(token.balanceOf(address(this)) >= amount, "Insufficient balance to repay loan");
        token.transfer(address(flashLoanProvider), amount);
    }
}