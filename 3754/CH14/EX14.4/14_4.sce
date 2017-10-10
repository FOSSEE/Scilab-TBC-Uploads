clear//

//Variables

IE = 10                        //Emitter current (in milli-Ampere)
alpha = 0.987                  //common base current gain

//Calculation

IC = alpha * IE                //Collector current (in milli-Ampere)
IB = IE - IC                   //Base current (in milli-Ampere)

//Result

printf("\n IC is  %0.3f  mA.\nIB is  %0.3f  mA.",IC,IB)
