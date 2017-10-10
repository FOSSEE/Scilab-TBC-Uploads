clear//

//Variables

VCC = 20.0                      //Source voltage (in volts)
RC = 2.0                        //Collector resistance (in kilo-ohm)
RB = 400.0                      //Base Resistance (in kilo-ohm)
beta = 100.0                    //Common-Emitter current gain
RE = 1.0                        //Emitter Resistance (in kilo-ohm)

//Calculation

IB = VCC / (RB + beta * RE)     //Base current (in milli-Ampere)
IC = beta * IB                  //Collector Current (in milli-Ampere)
VCE = VCC - IC * (RC + RE)      //Collector-to-Emitter Voltage (volts)

//Result

printf("\n VCE of the transistor is  %0.3f  V.\nVCC of the transistor is  %0.3f  V.\nIB of the transistor is  %0.3f  mA.\nIC of transistor is  %0.3f  mA.",VCE,VCC,IB,IC)
