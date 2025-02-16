# Flash Loan Contract

This project implements a flash loan contract using Solidity. The contract allows users to borrow assets without collateral, provided that the loan is repaid within the same transaction.

## Project Structure

- **contracts/FlashLoan.sol**: Contains the Solidity contract for the flash loan, including functions for initiating a flash loan, executing loan logic, and repaying the loan.
  
- **migrations/1_deploy_contracts.js**: Used for deploying the `FlashLoan` contract to the blockchain. It exports a function that utilizes Truffle's migration system.

- **test/flashLoanTest.js**: Contains test cases for the `FlashLoan` contract, ensuring that all functions work as intended using a testing framework like Mocha or Chai.

- **truffle-config.js**: Configuration file for Truffle, specifying network settings, compiler version, and other necessary configurations for deploying and testing the smart contracts.

## Setup Instructions

1. **Install Dependencies**: Make sure you have Node.js and npm installed. Then, install Truffle and Ganache globally:
   ```
   npm install -g truffle ganache-cli
   ```

2. **Clone the Repository**: Clone this repository to your local machine:
   ```
   git clone <repository-url>
   cd flash-loan-contract
   ```

3. **Install Project Dependencies**: Navigate to the project directory and install the required dependencies:
   ```
   npm install
   ```

4. **Start Ganache**: Run Ganache to create a local blockchain for testing:
   ```
   ganache-cli
   ```

5. **Deploy the Contract**: In a new terminal, deploy the contract to the local blockchain:
   ```
   truffle migrate
   ```

6. **Run Tests**: Execute the test cases to ensure everything is functioning correctly:
   ```
   truffle test
   ```

## Usage

To use the flash loan contract, you can interact with it through a front-end application or directly via the Truffle console. Ensure that you understand the risks associated with flash loans, as they require precise execution within a single transaction.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.