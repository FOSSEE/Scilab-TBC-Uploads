clear//

//Variables 

r1e = 8.0                       //a.c. load resistance (in ohm)
RC = 220.0                      //Collector resistance (in ohm)
RE = 47.0                       //Emitter resistance (in ohm)
R1 = 4.7 * 10**3                //Resistance (in ohm)
R2 = 470.0                      //Resistance (in ohm)
beta = 50.0                     //Common emitter current gain

//Calculation

rL = RC                         //Load resistance (in ohm)
Av = rL / r1e                   //Voltage gain
Ai = beta                       //Current gain
Ap = Av * Ai                    //Power gain  

//Result

printf("\n Voltage gain is  %0.3f  and Power gain is  %0.3f .",Av,Ap)
