//Exa 2.47
clc;
clear;
close;
//Given data :
format('v',6);
Output=10;//in H.P.
Output=Output*735.5;//in watts
cosfi=0.8;//unitless
ETA=0.83;//unitless
ISCbyIFL=3.5;//ratio of SC current to full load current
VL=500;//in volt
Input=Output/ETA;//in watts
IFL=Input/(sqrt(3)*VL*cosfi);//in Ampere
ISC=IFL*ISCbyIFL;//in Ampere
Is=ISC/3;//in Ampere
disp(Is,"Strting current(in Ampere) :");