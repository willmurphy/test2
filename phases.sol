// Incorrect ordering of the Conditions, Effects and Interaction phases

// Incorrect ordering of phases

Function refund ticket (address buyer) onlyOwner {
// Conditions phase
// Check if the amount paid by registrant is not zero
If (registrantsPaid [buyer] .amount ==0)
throw;

// Check if the number of tickets purchased by	
// the registrant is not zero
If (registrantsPaid [buyer] .numTickets==0)
throw;

// Check if the contract has enough balance to refund the registrant
if (this .balance < registrantsPaid [buyer] .amount)
throw;

// Interaction phase
// Refund the amount to the buyer
If (!buyer .send (registrantsPaid [buyer] .amount ) )
throw;
Refund (buyer, registrantsPaid [buyer] .amount) ;

// Effects phase
// Update the state variables
numTicketsSold = numTicketsSold - registrantsPaid [buyer] .numTickets;	
registrantsPaid [buyer] .amount = 0;
registrantsPaid [buyer] .numTickets=0;
