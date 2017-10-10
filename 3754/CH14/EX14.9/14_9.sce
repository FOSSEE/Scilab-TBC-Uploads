clear//

//Variables

IB = 0.125                       //Base current (in milli-Ampere)
beta = 200.0                     //common emitter current gain

//Calculation

IC = IB * beta                   //Collector current (in milli-Ampere)
IE = IC + IB                     //Emitter current (in milli-Ampere)

//Result

printf("\n Value of collector current is  %0.3f  mA.\nValue of emitter current is  %0.3f  mA.",IC,IE)
