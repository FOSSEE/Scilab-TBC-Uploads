clear//

//Variables

IE = 12.0                        //Emitter current (in milli-Ampere)
beta = 140.0                     //common emitter current gain

//Calculation

IB = IE / (1 + beta)             //Base current (in milli-Ampere)
IC = IE - IB                     //Collector current (in milli-Ampere)

//Result

printf("\n Collector current is  %0.3f  mA.\nBase current is  %0.3f  mA.",IC,IB)
