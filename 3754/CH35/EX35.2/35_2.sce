clear//

//Variables

CMRR = 90.0                    //Common-mode rejection ratio (in Decibels)
Adm = 30000.0                  //Differential gain

//Calculation

Acm = 10**(-CMRR/20.0) * Adm   //Common-mode gain 

//Result

printf("\n The common-mode gain is  %0.3f .",Acm)
