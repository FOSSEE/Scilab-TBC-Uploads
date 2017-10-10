clear//

//Variables

VCC = 10.0                            //Source voltage (in volts)
RC = 5.0                              //Collector resistance (in kilo-ohm)
rE = 500 * 10**-3                     //Emitter resistance (in kilo-ohm)
beta = 50.0                           //Common emitter current gain
VBE = 0.7                             //Emitter-to-Base Voltage (in volts)
R1 = 50.0                             //Resistance (in kilo-ohm)   
R2 = 10.0                             //Resistance (in kilo-ohm)
Vs = 100.0 * 10**-3                   //a.c voltage (in volts)
RS = 600.0 * 10**-3                   //Source resistance (in kilo-ohm)
RL = 50.0                             //Load resistance (in kilo-ohm)
RE1 = 500.0 * 10**-3                  //Resistance (in kilo-ohm)    

//Calculation

Vth = VCC * R2 /(R1 + R2)             //Thevenin's voltage (in volts)
Rth = R1 * R2 / (R1 + R2)             //Thevenin's equivalent resistance (in kilo-ohm)
RE = RE1 + rE                         //Emitter total resistance (in kilo-ohm)
IE = (Vth - VBE)/(RE + Rth/beta)      //Emitter current (in milli-Ampere)
r1e = 25.0 / IE * 10**-3              //a.c. resistance (in kilo-ohm)      
Ri = beta * (rE + r1e)                //Input resistance directly into the base (in kilo-ohm)
Ris = Rth * Ri/(Rth + Ri)             //Input resistance of the stage (in kilo-ohm)
rL = RC * RL / (RC + RL)              //a.c. load resistance (in kilo-ohm)
Av = rL/(rE + r1e)                    //Voltage gain
Avs = Av * Ris / (RS + Ris)           //Overall voltage gain
Vo = Avs * Vs                         //Output voltage (in volts)

//Result

printf("\n Input resistance looking directly into the base is  %0.1f  kilo-ohm.\nInput resistance of the stage is  %0.2f  kilo-ohm.\nVoltage gain is  %0.3f  .\nOverall voltage gain is  %0.2f  .\nOutput voltage is  %0.2f V.",Ri,Ris,Av,Avs,Vo)
