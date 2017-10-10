clear//

//Variables

beta = 150.0                   //common emitter current gain
IE = 10                        //Emitter current (in milli-Ampere)

//Calculation

alpha = beta / (beta + 1)      //common base current gain 
IC = alpha * IE                //Collector current (in milli-Ampere)
IB = IE - IC                   //Base current (in milli-Ampere)

//Result

printf("\n Collector current is  %0.2f  mA.\nBase current is  %0.2f  mA.",IC,IB)
