clear//

//Variables 

VCC = 20.0                        //Source voltage (in volts)
R1 = 10.0                         //Resistance (in kilo-ohm)
R2 = 1.8                          //Resistance (in kilo-ohm)
RC = 620.0 * 10**-3               //Collector resistance (in kilo-ohm)    
RE = 200.0 * 10**-3               //Emitter resistance (in kilo-ohm)  
RL = 1.2                          //Load resistance (in kilo-ohm)
beta = 180.0                      //Common emitter current gain
VBE = 0.7                         //Emitter-to-Base voltage (in volts)

//Calculation

VB = VCC * (R2 /(R1 + R2))        //Voltage drop across R2 (in volts)
VE = VB - VBE                     //Voltage at the emitter (in volts)
IE = VE / RE                      //Emitter current (in milli-Ampere)
IC = IE                           //Collector current (in milli-Ampere)
VCE = VCC - IE*(RC + RE)          //Collector-to-emitter voltage (in volts)
ICEQ = IC                         //Collector current at Q (in milli-Ampere)
VCEQ = VCE                        //Collector-to-emitter voltage at Q (in volts)  
rL = RC * RL/(RC + RL)            //a.c. load resistance (in kilo-ohm)  
PP = 2 * ICEQ * rL                //Compliance of the amplifier (in volts) 

//Result

printf("\n Overall compliance (PP) of the amplifier is  %0.2f  V.",PP)
