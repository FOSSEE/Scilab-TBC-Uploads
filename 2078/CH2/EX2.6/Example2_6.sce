//Exa 2.6
clc;
clear;
close;
format('v',6);
//Given data :
Pin=100;//MW
VL=380;//kV
d=100;//km
R=0.045;//ohm/cm^2/km
w=0.01;//kg/cm^3
Eta=90;//efficiency %
cosfi=1;
IL=Pin*10^6/sqrt(3)/VL/10^3/cosfi;//Ampere
W=Pin*(1-Eta/100);//MW
LineLoss=W*10^6/3;//Watts/conductor
R1=LineLoss/IL^2;//in ohm
R2=R1/d;//resistance per conductor per km
a=R/R2;//in cm^2
volume=a*d*1000;//cm^3 per km run
weight=w*volume;//kg per km run
w3=3*d*weight;//kg(weight of copper required for 3 conductors for 100 km)
disp(w3,"Weight of copper required for 3 conductors of 100 km length(in kg) : ");
//Answer in the book is not accurate.
