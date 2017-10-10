clear;
clc;
Beff=250 //effective gain
B1=25 //current gain of transistor
B2=8.65 //effective gain of Darlington-pair
iB=50*10^-3 //in A

//Calculation
iC2=iB*(Beff-B1)
iE2=(1+(1/B2))*iC2

mprintf("Emitter current= %2.2f A",iE2)
