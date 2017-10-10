clear//Variables

VBB = 2.7                       //Base voltage (in Volts)
RB = 40.0                       //Base resistance (in kilo-ohm)
VCC = 10.0                      //Supply voltage (in volts)
RC = 2.5                        //Collector resistance (in kilo-ohm)
VBE = 0.7                       //Emitter-to-base voltage (in volts)
beta = 100.0                    //Current gain 

//Calculation

IB = (VBB - VBE)/RB             //Base current (in milli-Ampere)
IC = beta * IB

//Result

printf("\n The base current is  %0.3f  mA.",IB)
printf("\n The collector current is  %0.3f  mA.",IC)
