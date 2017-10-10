clear//

//Variables

beta = 170.0                   //common emitter current gain
IC = 80.0                      //Collector current (in milli-Ampere)  

//Calculation

IB = IC / beta                 //Base current (in milli-Ampere)
IE = IB + IC                   //Emitter current (in milli-Ampere)

//Result

printf("\n Base current is  %0.2f  mA.\nEmitter current is  %0.2f  mA.",IB,IE)
