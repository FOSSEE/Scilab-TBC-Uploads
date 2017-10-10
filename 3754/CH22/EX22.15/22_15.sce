clear//

//Variables

VCC = 12.0                               //Source voltage (in volts)
RE = 100.0                               //Emitter Resistance (in ohm)
RC = 3.3                                 //Collector Resistance (in kilo-ohm)
IE = 2.0                                 //Emitter current (in milli-Ampere)
VBE = 0.7                                //Emitter-to-Base Voltage (in volts)
alpha = 0.98                             //Common base current gain
R2 = 20.0                                //Resistance (in kilo-ohm)

//Calculation

IC = alpha * IE                          //Collector current (in milli-Ampere)
VB = VBE + IE * RE * 10**-3              //Base voltage (in volts)
VC = VCC - IC * RC                       //Collector voltage (in volts)   
IR2 = VC / (R2)                          //Current through resistance 2 (in milli-Ampere)
IB = IE - IC                             //Base current (in milli-Ampere)
IR1 = IR2 + IB                           //Current through resistance 1 (in milli-Ampere)
R1 = (VC - VB) / IR1                     //Value of the resistance (in kilo-ohm)

//Result

printf("\n The value of R1 is  %0.1f  kilo-ohm.",R1)
