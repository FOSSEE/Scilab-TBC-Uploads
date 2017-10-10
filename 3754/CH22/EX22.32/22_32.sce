clear//

//Variables

VCC = 4.5                                    //Source voltage (in volts)
RE = 0.27                                    //Emitter Resistance (in kilo-ohm)
RC = 1.5                                     //Collector Resistance (in kilo-ohm)
R1 = 27.0                                    //Resistance (in kilo-ohm)
R2 = 2.7                                     //Resistance (in kilo-ohm)
VBE = 0.3                                    //Emitter-to-Base Voltage for germanium (in volts)
beta = 44.0                                  //Common emitter current gain 

//Calculation

VB = - VCC * R2 / (R1 + R2)                  //Base voltage (in volts)
VE = VB - (-VBE)                             //Emitter voltage (in volts)
IE = VE / RE                                 //Emitter current (in milli-Ampere)
IC = IE                                      //Collector current (in milli-Ampere)
VRC = -IC * RC                               //Voltage across collector resistance (in volts)
VC = -(VCC - VRC)                            //Collector voltage (in volts)
VCE = -(-VC - (-VE))                         //Collector-to-emitter voltage (in volts)

//Result

printf("\n The operating point values are IC =  %0.3f  mA and VCE =  %0.2f  V.",-IC,VCE)
