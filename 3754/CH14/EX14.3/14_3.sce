clear//

//Variables

alpha = 0.967                  //common base current gain
IE = 10                        //Emitter current (in milli-Ampere)

//Calculation

IC = alpha * IE                //Collector current (in milli-Ampere)
IB = IE - IC                   //Base current (in milli-Ampere)

//Result

printf("\n Base current is  %0.3f  mA." ,IB)
