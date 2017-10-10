clear//

//Variables

hfe = 100.0                              //hfe 
hie = 2.0 * 10**3                        //hie (in ohm)
Re1 = 100.0                              //Emitter resistance (in ohm)
R1 = 15.0 * 10**3                        //Resistance (in ohm)
R2 = 5.6 * 10**3                         //Resistance (in ohm)
Rc = 470.0                               //Collector resistance (in ohm)

//Calculation

Ai = hfe                                 //Current gain
Av = Ai * Rc / hie                       //Voltage gain 
Ri = (R1*R2*hie)/(R1*R2+R2*hie+R1*hie)   //Input resistance (in ohm)  
beta = Re1 / Rc                          //feedback ratio 
A1v = Av / (1 + beta * Av)               //Voltage ratio with feedback
R1i = Ri*(1 + beta * Av)                 //Input resistancewith feedback (in ohm)

//Result

printf("\n Voltage gain without feedback is  %0.3f .\nInput resistance without feedback is  %0.0f  kilo-ohm.\nVoltage gain with feedback is  %0.2f .\nInput resistance with feedback is  %0.1f  kilo-ohm.",Av,Ri,A1v,R1i)
