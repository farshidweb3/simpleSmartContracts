// Contract representing a single account
contract Account {
    address public owner;
    uint public balance;

    constructor(address _owner) {
        owner = _owner;
        balance = 0;
    }

    function deposit() public payable {
        balance += msg.value;
    }

    function withdraw(uint amount) public {
        require(balance >= amount, "Insufficient balance");
        balance -= amount;
        payable(owner).transfer(amount);
    }
}

// Contract representing a bank
contract Bank {
    Account[] public accounts;

    function createAccount() public {
        Account account = new Account(msg.sender);
        accounts.push(account);
    }

    function getBalance(uint index) public view returns (uint) {
        require(index < accounts.length, "Invalid account index");
        Account account = accounts[index];
        return account.balance();
    }

    function deposit(uint index) public payable {
        require(index < accounts.length, "Invalid account index");
        Account account = accounts[index];
        account.deposit{value: msg.value}();
    }

    function withdraw(uint index, uint amount) public {
        require(index < accounts.length, "Invalid account index");
        Account account = accounts[index];
        account.withdraw(amount);
    }
}
