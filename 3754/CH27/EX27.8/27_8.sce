clear//

//Variables 

a = 15.0                     //Turns ratio
RL = 8.0                     //Load resistance (in ohm)   

//Calculation

R1L = a**2 * RL              //Effective resistance (in ohm)   

//Result

printf("\n The effective resistance is  %0.3f  kilo-ohm.",R1L * 10**-3)
