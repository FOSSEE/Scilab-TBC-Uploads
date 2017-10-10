clear//

//Variables

V = 18                   //Voltage (in volts)
I = 60*10**-6            //current (in Ampere)

//Calculation

R = V/I                  //Resistance (in ohm)
G = 1/R                  //Conductance (in siemens) 

//Result

printf("\n The conductance is  %0.2f  micro-siemens.",G * 10**6)
