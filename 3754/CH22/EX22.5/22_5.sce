clear//

//Variables

VCC = 5.0                      //Source voltage (in volts)
RC = 5.0                       //Collector resistance (in kilo-ohm)
VBB = 5.0                      //Base voltage (in volts)
RB = 100.0                     //Base Resistance (in kilo-ohm)
VBE = 0.7                      //Emitter-to-Base Voltage (in volts)
beta = 30.0                    //Common-Emitter current gain

//Calculation

IB = (VBB - VBE)/RB            //Base Current (in milli-Ampere)
IC = beta * IB                 //Collector Current (in milli-Ampere)
IC1 = VCC / RC                 //Collector Current (in milli-Ampere)

//Result

printf("\n The value of collector current is for operation in saturation region is  %0.3f  mA.\nSince  %0.3f  mA is greater than  %0.3f  mA , therefore it will operate in saturation region.",IC1,IC,IC1)
