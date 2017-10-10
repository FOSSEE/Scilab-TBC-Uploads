clear//

//Variables

C = 1000.0 * 10**-12             //Capacitance (in Farad) 
tp = 10.0 * 10**-6               //Pulse width (in seconds)
T = 60.0 * 10**-6                //time period (in seconds) 

//Calculation

R1 = tp / (1.1 * C)              //Resistance (in ohm)               

//Result

printf("\n Resistance required is  %0.2f  kilo-ohm.",R1 * 10**-3)
