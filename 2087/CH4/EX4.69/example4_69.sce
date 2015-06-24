

//example 4.69
//calculate
//probability of exceedence
//probability of occurence in next 12 years
clc;funcprot(0);
//given
T=25;        //return period
n=12;
P=1/T;
Rsk=1-(1-P)^n;
P=round(P*100)/100;
Rsk=round(Rsk*10000)/10000;
mprintf("probability of exceedence=%f.",P);
mprintf("\nprobability of occurence in next 12 years=%f.",Rsk);

