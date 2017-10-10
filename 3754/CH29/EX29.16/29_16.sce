clear//

//Variables

hfe = 99.0                             //hfe
hie = 2.0 * 10**3                      //hie (in ohm)
Rc = 22.0 * 10**3                      //Load resistor of frist stage (in ohm)   
R4  = 100.0                            //Emitter resistance of first stage (in ohm)
R1 = 220.0 * 10**3                     //Biasing resistor of second stage (in ohm)
R2 = 22.0 * 10**3                      //Biasing resistor of second stage (in ohm)
R1c = 4.7 * 10**3                      //Load resistance of second stage (in ohm)
R3 = 7.8 * 10**3                       //Feedback resistor from collector of second stage to emitter of first stage (in ohm)

//Calculation

Ri = hie                               //Input resistance of first stage (in ohm)
Ro1 = (1/Rc + 1/R1 + 1/R2 + 1/hie)**-1 //Output resistance of first stage (in ohm)
Ri2 = hie                              //Input resistance of second stage (in ohm)  
Ro2 = R1c * (R3 + R4)/(R1c + R3 + R4)  //Output resistance of second stage (in ohm)
Av1 = hfe * Ro1 / hie                  //Voltage gain of first stage  
Av2 = hfe * Ro2 / hie                  //Voltage gain of second stage 
Av = Av1 * Av2                         //Overall voltage gain without feedback
beta = R4 / (R3 + R4)                  //Feedback ratio
Ri1 = Ri*(1 + beta*Av)                 //Input resistance with feedback (in ohm)
R1o2 = Ro2 / (1 + beta * Av)           //Output resistance with feedback (in ohm)
A1v = Av / (1 + beta * Av)             //Overall voltage gain with feedback   

//Result

printf("\n Voltage gain without feedback is  %0.1f .\nInput resistance of first stage without feedback is  %0.3f  kilo-ohm.\nInput resistance of second stage without feedback is  %0.3f  kilo-ohm.\nOutput resistance of first stage without feedback is  %0.2f  kilo-ohm.\nOutput resistance of second stage without feedback is  %0.2f  kilo-ohm .",Av,Ri*10**-3,Ri2*10**-3,Ro1*10**-3,Ro2*10**-3)
printf("\n Voltage gain with feedback is  %0.1f .\nInput resistance with feedback is  %0.2f  kilo-ohm.\nOutput resistance with feedback is  %0.3f  kilo-ohm.",A1v,Ri1*10**-3,R1o2*10**-3)
