clear//

//Variables

VCC = 12.0                       //Source voltage (in volts)
RC = 10.0 * 10**3                //Collector resistance (in ohm)
RE = 1.0 * 10**3                 //Emitter resistance (in ohm)
RB = 500.0 * 10**3               //Base resistance (in ohm)
beta = 50.0                      //Common emitter current gain

//Calculation

IC = VCC / (RE + RB/beta)        //Collector current (in Ampere)
IE = IC                          //Emitter current (in Ampere)
r1e = 25.0 / IE * 10**-3         //a.c. resistance of emitter diode (in ohm)
Ri = beta * (r1e)                //Input resistance looking directly into the base (in ohm)
Ris = RB * Ri / (RB + Ri)        //Input resistance of the stage (in ohm)
Av = RC / r1e                    //Voltage gain 
AV1 = RC / RE                    //New voltage gain  

//Result

printf("\n Input resistance looking into the base is  %0.0f  ohm.\nInput resistance of the stage is  %0.1f  kilo-ohm.\nVoltage gain is  %0.2f .\nNew Voltage gain is  %0.3f .",Ri,Ris,Av,AV1)
