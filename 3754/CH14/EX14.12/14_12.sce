clear//

//Variables

alpha = 0.98                               //common base current gain
ICO = 5 * 10**-3                           //Leakage current (in milli-Ampere)
IB = 100 * 10**-3                          //Base current (in milli-Ampere)

//Calculation

IC = (alpha * IB + ICO)/ (1 - alpha)       //Collector current (in milli-Ampere)
IE = IC + IB                               //Emitter current (in milli-Ampere)                        

//Result

printf("\n Value of collector current is  %0.3f  mA.\nValue of emitter current is  %0.3f  mA.",IC,IE)
