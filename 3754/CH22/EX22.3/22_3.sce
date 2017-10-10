clear//

//Variables

VCC = 25.0                    //Source voltage (in volts)
RC = 820.0                    //Collector Resistance (in ohm)
RB = 180.0                    //Base Resistance (in kilo-ohm)
beta = 80.0                   //Common-Emitter current gain

//Calculation

IB = VCC / RB                 //Base current (in milli-Ampere)
IC = beta * IB                //Collector current (in milli-Ampere)
VCE = VCC - IC * RC * 10**-3  //Collector-to-Emitter voltage (in volts)

//Result

printf("\n The value of base current is  %0.2f  mA.\nThe value of Collector current is  %0.2f  mA.\nTHe value of Collector-to-Emitter voltage is  %0.2f  V.",IB,IC,VCE)
