clear//

//Variables

dIL = 40.0                    //Change in current (in milli-Ampere)
VNL = 8.0                     //Voltage under no load (in volts)
VFL = 7.995                   //Voltage under full load (in volts)

//Calculation

LR = (VNL - VFL)/ dIL         //Line regulation (in milli-volt per milli-Ampere)   

//Result

printf("\n Line regulation is  %0.3f mV/mA.",LR * 10**3)
