clear//

//Variables

VCC = 15.0                                 //Source voltage (in volts)
RE = 2.0                                   //Emitter Resistance (in kilo-ohm)
RC = 1.0                                   //Collector Resistance (in kilo-ohm)
R1 = 10.0                                  //Resistance (in kilo-ohm)
R2 = 5.0                                   //Resistance (in kilo-ohm)
VBE = 0.7                                  //Emitter-to-Base Voltage (in volts)

//Calculation

Vth = VCC * (R2 /(R1 + R2))                //Thevenin's voltage (in volts)
Rth = R1 * R2 / (R1 + R2)                  //Thevenin's equivalent resistance (in kilo-ohm)
IE = (Vth - VBE)/(RE)                      //Emitter current (in milli-Ampere)
VCE = VCC - IE * (RC + RE)                 //Collector-to-Emitter voltage (in volts)

//Result

printf("\n Emitter current is  %0.3f  mA.\nThe value of collector-to-emitter voltage is  %0.3f  V.",IE,VCE)
