clear//

//Variables

LR = 10.0                              //Load regulation (in micro-volt per milli-Ampere)
VNL = 5.0                              //No load Voltage (in volts)
dIL = 20.0                             //Change in current (in milli-Ampere)

//Calculation

VFL = VNL - LR * dIL * 10**-6          //Full load Voltage (in volts) 

//Result

printf("\n Full load Voltage is  %0.3f  V.",VFL)
