clear//

//Variables 

RL = 1.0 * 10**3                   //Load resistance (in ohm)
IC = 10.0 * 10**-3                 //Collector current (in Ampere)

//Calculation

PL = IC**2 * RL                    //Load power (in watt)

//Result

printf("\n Power delivered to the load is  %0.3f  W.",PL)
