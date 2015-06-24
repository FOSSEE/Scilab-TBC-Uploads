//chapter 19
//example 19.7
//page 611
clear all;
clc ;
//given
Vcc=9;//supply voltage V
Vi=7;//ip voltage
VD1=1.2;//V
VCEsat=0.2;//V
Ic=10;//collector current mA
R2=1000*(Vcc-VD1-VCEsat)/Ic;
printf("\nR2=%d ohm,use standard 680 ohm",R2);R2=680;
Ic=1000*(Vcc-VD1-VCEsat)/R2;
hfemin=100;
Ib=1000*Ic/hfemin;
R1=1000*(Vi-0.7)/Ib;
printf("\nR1=%d kohm, standard value",R1);



