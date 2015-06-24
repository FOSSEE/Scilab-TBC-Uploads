//Chapter 5
//page 135
//Example no 5-2
//Given 
clc;
clear;
Rf=10000;       //in Ohm
Ri=2000;        //in Ohm
Av=-Rf/Ri;
printf("\n Av  = %.0f ",Av);//Result
Av1=20*log10(-Av);
printf("\n Av in %.0f bB",Av1);//Result
//for noise gain 
An=1+Rf/Ri;
printf("\n Anoise =%.0f ",An);  //Result
