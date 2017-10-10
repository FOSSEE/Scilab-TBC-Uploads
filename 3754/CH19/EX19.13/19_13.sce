clear//

//Variables

Idc = 0.2                            //Average value of current (in Ampere)
Vdc = 30.0                           //Average value of voltage (in volts)
C1=100.0;C2=100.0;
L = 5.0                              //Inductance (in Henry)
f = 50.0                             //Frequency (in Hertz) 

//Calculation

RL = Vdc / Idc                       //Load resistance (in ohm)
gamma = 5700.0 / (C1 * C2 * RL * L)  //Ripple factor
 
//Result

printf("\n Ripple factor for 50 Hz supply is  %0.3f .",gamma)
