//Chapter 12, Problem 6
clc;
hFE=125;                    //common-emitter current gain
Ic=50*10^-3;                //collector current 
Ib=Ic/hFE;                  //calculating base current
printf("Base current Ib = %d microampere",Ib*10^6);
