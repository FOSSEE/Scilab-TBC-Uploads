clear//

//Variables

Adm = 200000.0                    //Differential gain
Acm = 6.33                        //Common mode gain                    

//Calculation

CMRR = 20 * log10(Adm / Acm)      //Common-mode rejection ratio (in Decibels)   

//Result

printf("\n The common-mode rejection ratio is  %0.0f  dB.",CMRR)
