// checkGoalReached fundction of CrowdFunding contract without using the withdral pattern

function checkGoal Reached ()  onlyOwner returns  (bool ended)  [ 
         // Phase-1:   Conditions
       if  (ended) 
       throw;  //   this function has already been called

  if  (amountRaise  >= goal)  [
        // Phase-2:  Effects
        campaignStatus  = " Campaign Succeeded";
        ended  = true;

      // Phase-3 :  Interaction
      if  (!owner. send  (this. balance) )
         throw;  //If anything fails,
                        // this will revert the changes above

] else [
         // Phase-2:  Effects
        campaignStatus =  "Campaign Failed" ;
        ended = true;  
        uint   i  = 0 ; 
        while  (i  <= numBackers) {
               backers [i} . amount  = 0;

      // Phase- 3:  Interaction
      if  (! backers [i} . addr.send (backers {i} . amount))
             throw;  // If anything fails, 
                            // this will revert the changes above

       Refund (baclers [i}. addr, backers [i]. amount) ; 
        i++;  
        ]

    ]

]
