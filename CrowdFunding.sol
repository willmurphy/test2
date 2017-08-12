//CrowdFunding contract, rejector pattern

contract Crowdfunding {

// Rejector
function   () {
	// This function gets executed if a 
	// transaction with invalid data is sent to
	// the contract or just ether without data.
	// We revert the send so that no-one
	// accidentally loses money when using the 
	// contract.
	throw;
}

//  Backers have to call fund function to send Ether to the contract function fund() {
	Backer b = backers[numBackers++];
	b.addr = msg.sender;
	b.amount = msg.value;
	amountRaised += b.amount;
	Deposit(msg.sender, msg.value);
}
