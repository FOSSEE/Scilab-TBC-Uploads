clear//

//Variables

VCC = 20.0                            //Source voltage (in volts)
RC = 5.7                              //Collector resistance (in kilo-ohm)
RE = 1.0                              //Emitter resistance (in kilo-ohm)
beta = 100.0                          //Common emitter current gain
VBE = 0.7                             //Emitter-to-Base Voltage (in volts)
R1 = 100.0                            //Resistance (in kilo-ohm)   
R2 = 10.0                             //Resistance (in kilo-ohm)
Vs = 10.0 * 10**-3                    //a.c voltage (in volts)
RS = 100.0 * 10**-3                   //Source resistance (in kilo-ohm)  

//Calculation

Vth = VCC * R2 /(R1 + R2)             //Thevenin's voltage (in volts)
Rth = R1 * R2 / (R1 + R2)             //Thevenin's equivalent resistance (in kilo-ohm)
IE = (Vth - VBE)/(RE + Rth/beta)      //Emitter current (in milli-Ampere)
r1e = 25.0 / IE * 10**-3              //a.c. resistance of emitter diode (in kilo-hm)
Ris = Rth * beta*r1e/(Rth + beta*r1e) //input resistance of the stage (in ohm)
rL = RC                               //Load resistance (in kilo-ohm)
Av = rL / r1e                         //Voltage gain 
vin = Vs * Ris / (Ris + RS)           //input voltage (in milli-volts)    
vo = Av * vin                         //Output voltage (in milli-volts)
Avs = Av * vin / Vs                   //Overall voltage gain 

//Result

printf("\n Av is  %0.3f .\nRi is  %0.2f  ohm.\nVo is  %0.2f  V.\nAvs is  %0.2f .",Av,Ris*10**3,vo,Avs)
