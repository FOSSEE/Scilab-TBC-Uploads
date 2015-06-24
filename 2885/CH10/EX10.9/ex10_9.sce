//Determine the input resistance of feedback amplifier
clear;
clc;
//soltion
//given

A=250;      //internal gain
B=0.1;//feedback factor
Ri=1.1*10^3;//ohm    //input resistance
Rif=Ri*(1+A*B);
printf("The input resistance of feedback amplifier %.1f kΩ",Rif/1000);
//The ans in book is incorrect due to use of (2+A*B) instead of (1+A*B) the ans in book is 29.7 kΩ
