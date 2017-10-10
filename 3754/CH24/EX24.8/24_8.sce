clear//

//Variables

VCC = -18.0                           //Source voltage (in volts)
RC = 4.3                              //Collector resistance (in kilo-ohm)
RE = 1.0                              //Emitter resistance (in kilo-ohm)
beta = 200.0                          //Common emitter current gain
VBE = -0.7                            //Emitter-to-Base Voltage (in volts)
R1 = 39.0                             //Resistance (in kilo-ohm)   
R2 = 8.2                              //Resistance (in kilo-ohm)
RL = 3.0                              //Load resistance (in kilo-ohm)

//Calculation

Vth = VCC * R2 / (R1 + R2)            //Thevenin's voltage (in volts)
Rth = R1 * R2 / (R1 + R2)             //Thevenin's equivalent voltage (in volts)
IC = (Vth - VBE)/(RE + Rth/beta)      //Collector current (in milli-Ampere)
IE = -IC                              //Emitter current (in milli-Amper) 
r1e = 30.0/IE * 10**-3                //a.ac resistance (in kilo-ohm)
Ris = Rth * beta*r1e/(Rth + beta*r1e) //input resistance of the stage (in ohm)
rL = RC * RL / (RC + RL)              //a.c. load resistance (in kilo-ohm)     
Av = rL / r1e                         //Voltage gain 

//Result

printf("\n Voltage gain is  %0.1f .",Av)
