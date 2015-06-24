//Exa 2.55
clc;
clear;
close;
//Given data :
format('v',6);
Output=3;//in H.P.
Output=3*735.5;//in watts
Efficiency=0.83;//unitless
cosfi=0.8;//power factor
Vl=500;//in volt
Input=Output/Efficiency;//in watts
//Formula : Input=sqrt(3)*Vl*Il*cosfi
Il=Input/(sqrt(3)*Vl*cosfi);//in Ampere
ISCbyIFL=3.5;//ratio of SC current to full load current
ISC=ISCbyIFL*Il;//in Ampere
LineCurrent=ISC/3;//in Ampere(for star delta starter)
disp(LineCurrent,"Line Current(in Ampere) :");
//Note : Ans in the book is not accurate.