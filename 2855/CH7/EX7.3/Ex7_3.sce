//Chapter 7
//page no 223
//given
clc;
clear all;

Rl=50;      //in Ohm
Ro=100;     //in Ohm
Vos=450;            //in mV
Vref=(Rl+Ro)/Rl*Vos/2;
printf("\n Vref= %0.0f mV",Vref) ;
Vee=3.3;            //in V
R1=500;         //in Ohm
R2=16000;            //in Ohm
//Rref=(Vee/Vref/10^3-1)*R1/[1-{R1/R2*(Vee/Vref/10^3-1)}]
Rref={(Vee/Vref/10^-3-1)*R1}/[1-R1/R2*(Vee/Vref/10^-3-1)]
printf("\n Rref= %0.0f kohm",Rref) ;
printf("\n Approx. Rref= %0.1f kohm",Rref*10^-3) ;

