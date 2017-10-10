clear//

//Variables

VCC = 30.0                        //Source voltage (in volts)
RC = 10.0                         //Collector resistance (in kilo-ohm)
RE = 8.2                          //Emitter resistance (in kilo-ohm)
RL = 3.3                          //Load resistance (in kilo-ohm)
beta = 200.0                      //Common emitter current gain
VBE = 0.7                         //Emitter-to-Base Voltage (in volts)
R1 = 47.0                         //Resistance (in kilo-ohm)   
R2 = 15.0                         //Resistance (in kilo-ohm)
Vs = 5.0                          //a.c voltage (in milli-volts)

//Calculation

Vth = VCC * R2 / (R1 + R2)        //Thevenin's voltage (in volts)
Rth = R1 * R2 / (R1 + R2)         //Thevenin's equivalent voltage (in volts)
IE = (Vth - VBE)/(RE + Rth/beta)  //Emitter current (in milli-Ampere)
r1e = 25.0 / IE                   //a.c. resistance of emitter diode (in ohm)     
rL = RC * RL/(RC + RL)            //a.c load seen by the amplifier (in kilo-ohm)     
Av = rL * 10**3 / r1e             //Voltage gain
vo = Av * Vs                      //Output voltage (in volts)
Ri = beta * r1e * 10**-3          //Input resistance looking directly into the base (in ohm)  
Ris = Rth * Ri / (Rth + Ri)       //input resistance of the stage (in ohm)

//Result

printf("\n a.c output voltage is  %0.2f  mV.\nInput impedance for the circuit is  %0.0f  kilo-ohm.",vo,Ris)
