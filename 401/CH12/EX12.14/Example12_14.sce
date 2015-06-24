//Example 12.14
//Program to determine whether the combination of components gives
//an adequate temporal response

clear;
clc ;
close ;

//Given data
L=5;                             //km - LENGTH OF FIBER LINK
Ts=10*10^(-9);                   //s - SOURCE RISE TIME
Dn=9*10^(-9);                    //s/km - INTERMODAL RISE TIME
Dc=2*10^(-9);                    //s/km - CHROMATIC RISE TIME
Td=3*10^(-9);                    //s - DETECTOR RISE TIME
Bopt=6*10^6;                     //Hz - REQUIRED OPTICAL BANDWIDTH

Tn=Dn*L;
Tc=Dc*L;

//Maximum permitted rise time
Tsyst_max=0.35/Bopt;

//Total system rise time
Tsyst=1.1*sqrt(Ts^2+Tn^2+Tc^2+Td^2);

//Displaying the Results in Command Window
printf("\n\n\t Maximum permitted rise time, Tsyst(max) = %0.1f ns.",Tsyst_max/10^(-9));
printf("\n\n\t Total system rise time, Tsyst = %0.1f ns.",Tsyst/10^(-9));
printf("\n\n\t Hence system gives adequate temporal response.");