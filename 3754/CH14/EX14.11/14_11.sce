clear//

//Variables

IB = 105 * 10**-3                 //Base current (in milli-Ampere)
IC = 2.05                         //Collector current (in milli-Ampere)

//Calculation

beta = IC / IB                    //Common base current gain
alpha = beta / (1 + beta)         //Common emitter current gain
IE = IB + IC                      //Emitter current (in milli-Ampere)
IC1 = IC + 0.65                   //New collector current (in milli-Ampere)
IB1 = IB + 27 * 10**-3            //New base current (in milli-Ampere)                     
beta1 = IC1 / IB1                 //New value of beta

//Result

printf("\n Beta of the transistor is  %0.1f .\nalpha of the transistor is  %0.2f .\nEmitter current is  %0.3f  mA.\nNew value of beta is  %0.2f .",beta,alpha,IE,beta1)
