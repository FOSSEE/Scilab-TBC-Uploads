

clear;
clc;

printf("\t Example 10.11\n");
T1=1473 ;         //temp.of gas,K   
T2=573 ;      //temp of walls,K
D1=0.4;        //diameter of combustor, m
a=5.67*10^-8;    //stefan boltzman coefficient,W/(m^2*K^4)
//we have Lo=D1=0.4m, a total pressure of 1 atm., pco2=0.2 atm. , using figure, we get eg=0.098.
eg=0.098;    //total emittance

ag=(T1/T2)^0.5*(0.074);    //total absorptance
//now we can calculate Qnetgas to wall. for these problems with one wall surrounding one gas, the use of the mean beam length in finding eg and ag accounts for all geometric effects and no view factor is required. 

Qngw=%pi*D1*a*(eg*T1^4-ag*T2^4)/1000;    //net heat radiated to the walls,kW/m
printf("\t net heat radiated to the walls is : %.1f KW/m\n",Qngw);
//end