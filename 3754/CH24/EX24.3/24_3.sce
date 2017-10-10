clear//

//Variables

VCC = 20.0                       //Source voltage (in volts)
RC = 5.0                         //Collector resistance (in kilo-ohm)
RE = 1.0                         //Emitter resistance (in kilo-ohm)
RB = 100.0                       //Base resistance (in kilo-ohm)
beta = 150.0                     //Common emitter current gain

//Calculation

IC = VCC / (RE + RB/beta)        //Collector current (in milli-Ampere)
IE = IC                          //Emitter current (in milli-Ampere)
r1e = 25.0 / IE * 10**-3         //a.c. resistance of emitter diode (in kilo-ohm)
Ri = beta * (r1e + RE)           //Input resistance looking directly into the base (in kilo-ohm)
Ris = RB * Ri / (RB + Ri)        //Input resistance of the stage (in kilo-ohm)
Av = RC / RE                     //Voltage gain 
Gp = 10 * log10(Av)              //dB power gain (in decibel)

//Result

printf("\n Input resistance looking into the base is  %0.0f  kilo-ohm.\nInput resistance of the stage is  %0.0f  kilo-ohm.\nVoltage gain is  %0.3f .\ndB voltage gain is  %0.0f  dB.",Ri,Ris,Av,Gp)
