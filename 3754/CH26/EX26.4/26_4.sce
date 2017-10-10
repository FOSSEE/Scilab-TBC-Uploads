clear//

//Variables

VCC = 15.0                        //Source voltage (in volts)
RC = 3.3 * 10**3                  //Collector resistance (in ohm) 
RE = 1.0 * 10**3                  //Emitter resistance (in ohm)
RL = 10.0 * 10**3                 //Load resistance (in ohm)
R1 = 33.0 * 10**3                 //Resistance (in ohm)
R2 = 8.2 * 10**3                  //Resistance (in ohm)
beta1=100.0;beta2=100.0;
VBE = 0.7                         //Emitter-to-base voltage (in volts)

//Calculation

Vth = VCC * R2 / (R1 + R2)        //Thevenin's voltage (in volts)
Rth = R1 * R2 / (R1 + R2)         //Thevenin's equivalent resistance (in ohm)
IE = (Vth - VBE)/(RE + Rth/beta1) //Emitter current (in Ampere)
r1e = 25.0/IE * 10**-3            //a.c. emitter resistance (in ohm)
Ri2 = beta1 * r1e                 //Input resistance of second stage (in ohm)
Ro1 = RC * Ri2 / (RC + Ri2)       //Output resistance of first stage (in ohm)
Ro2 = RC * RL /(RC + RL)          //Output resistance of second stage (in ohm)
Av1 = Ro1 / r1e                   //Voltage gain of the first stage
Av2 = Ro2 / r1e                   //Voltage gain of second stage
Av = Av1 * Av2                    //Overall voltage gain
Gv = 20 * log10(Av)               //Overall voltage (in decibels)

//Result

printf("\n Voltage gain of stage one and two are as follows  %0.2f  and  %0.2f .\nOverall voltage gain is  %0.0f .\nOverall voltage gain in decibels is  %0.1f  dB.",Av1,Av2,Av,Gv)
