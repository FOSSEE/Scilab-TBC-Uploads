clear//

//Variables

LR = 1.4                       //Line regulation (in micro-volt per volt)               
dVS = 10                       //Change in source voltage (in volts)

//Calculation

dVL = LR * dVS                 //Change in output voltage (in micro-volts)

//Result

printf("\n The change in output voltage is  %0.3f  micro-volt.",dVL)
