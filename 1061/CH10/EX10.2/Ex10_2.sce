//Ex:10.2
clc;
clear;
close;
a_fc=4;// fider cable loss in dB/km
aj=0.7;// splice loss in db/km
L=5;// length in km
a_cr1=4;// connector losses
a_cr2=3.5;// connector losses
CL=(a_fc+aj)*L+(a_cr1+a_cr2);// total channel loss in dB
printf("The total channel loss =%d dB", CL);