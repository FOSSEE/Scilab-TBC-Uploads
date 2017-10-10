clear//

//Variables

VCC = 10.0                        //Source voltage (in volts)
RC = 5.0 * 10**3                  //Collector resistance (in ohm) 
RB = 1.0 * 10**6                  //Base resistance (in ohm)
RE = 1.0 * 10**3                  //Emitter resistance (in ohm)
RL = 10.0 * 10**3                 //Load resistance (in ohm)
beta1=100.0;beta2=100.0;

//Calculation

IE = VCC /(RE + RB/beta1)         //Emitter current (in Ampere)
r1e = 25.0/IE * 10**-3            //a.c. emitter diode resistance (in ohm)
Ri1 = beta1 * r1e                 //Input resistance of first stage (in ohm)
Ri2 = beta2 * r1e                 //Input resistance of second stage (in ohm)
Ro1 = RC * Ri2 / (RC + Ri2)       //Output resistance of first stage (in ohm)
Ro2 = RC * RL / (RC + RL)         //Output resitance of second stage (in ohm)
Av1 = Ro1 / r1e                   //Voltage gain of first stage
Av2 = Ro2 / r1e                   //Voltage gain of second stage
Av = Av1 * Av2                    //Overall voltage gain
Gv = 20 * log10(Av)               //Overall dB voltage gain

//Result

printf("\n Input resistance of first and scond stage is  %0.0f  ohm and  %0.0f  ohm.\nOutput resistance of first and second stage is  %0.1f  ohm and  %0.1f  ohm.\nVoltage gain of first and second stage is  %0.0f  and  %0.1f .\nOverall voltage gain and dB voltage gain is  %0.0f  and  %0.1f  dB.",Ri1,Ri2,Ro1,Ro2,Av1,Av2,Av,Gv)
