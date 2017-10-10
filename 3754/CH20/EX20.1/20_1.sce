clear//

//Variables

dVL = 100.0 * 10**-6                 //Change in output voltage (in volts)
dVin = 5.0                           //Change in input voltage (in volts)

//Calculation

LR = dVL / dVin                      //Line regulation (in volt per volt)

//Result

printf("\n The value of line regulation is  %0.3f  micro-volt/volt.",LR * 10**6)
