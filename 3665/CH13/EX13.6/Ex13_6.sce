clc//
//
//

//Variable declaration
Pout=40;    //power(mW)
Pin=100;    //power(mW)

//Calculation
al=-10*log10(Pout/Pin);    //attenuation loss(dB)

//Result
printf("\n attenuation loss is %0.2f dB",al)
