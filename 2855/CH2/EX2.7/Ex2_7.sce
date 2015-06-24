//Chapter 2
//page no 56
//given
clc;
clear ;
Is=100;          //in nAmp        
Ts=100;             //in Kelvin
I_s=Is*10^-9*2^(Ts/10);       //I_s will be in nm 
printf("\n I(100 deg Cel) is  %0.2f microA \n",I_s*10^6);   //converted to microA from nm
// wrong calculation in the book
