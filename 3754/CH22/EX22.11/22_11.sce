clear//

//Variables

VCC = 25.0                        //Source voltage (in volts)
RC = 820.0                        //Collector resistance (in ohm)
RB = 180.0 * 10**3                //Base Resistance (in ohm)
beta = 80.0                       //Common-Emitter current gain
VBE = 0.7                         //Emitter-to-Base Voltage (in volts)
RE = 200.0                        //Emitter resistance (in kilo-ohm)

//Calculation

IC = (VCC -VBE)/(RE + RB / beta)  //Collector current (in milli-Ampere)
VCE = VCC - IC * RC               //Collector-to-Emitter voltage (in volts)    
S = 1 + beta                      //Stability factor   

//Result

printf("\n Collector current is  %0.1f  mA.\nCollector-to-Emitter voltage is  %0.3f  V.\nStability factor is  %0.3f .",IC*10**3,VCE,S)
