clear//

//Variables

Av = 300.0                    //Voltage gain without feedback
Ri = 1.5 * 10**3              //Input resistance (in ohm)
Ro = 50.0 * 10**3             //Output resistance (in ohm)
beta = 1.0/15.0               //feedback ratio  

//Calculation

A1v = Av/ (1 + beta*Av)       //Voltage gain with feedback 
R1i = (1 + beta* Av)* Ri      //Input resistance with feedback (in ohm)    
R1o = Ro/(1 + beta * Av)      //Output resistance with feedback (in ohm)

//Result

printf("\n Voltage gain with feedback is  %0.1f .\nInput resistance with feedback is  %0.3f  kilo-ohm.\nOutput resistance with feedback is  %0.1f  kilo-ohm.",A1v,R1i*10**-3,R1o*10**-3)
