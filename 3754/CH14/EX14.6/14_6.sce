clear//

//Variables

beta = 100.0                   //common emitter current gain
IC = 40.0                      //Collector current (in milli-Ampere)  

//Calculation

IB = IC / beta                 //Base current (in milli-Ampere)
IE = IB + IC                   //Emitter current (in milli-Ampere)

//Result

printf("\n The value of emitter current is  %0.3f  mA.",IE)
