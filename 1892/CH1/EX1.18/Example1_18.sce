// Example 1.18

clear; clc; close;
format('v',6);
// Given data
P=4;//in poles
f=50;//in Hz
Pout=30;//in HP
VL=400;//in volt
Eta=0.8;//Efficiency
cosfi=0.75;//lagging power factor

//Calculations
Pout=Pout*735.5;//in Watts
Pin=Pout/Eta;//in Watts
//Formula : Pin=sqrt(3)*VL*IL*cosfi
IL=Pin/sqrt(3)/VL/cosfi;//in Ampere
disp(IL,"Current by the mains in ampere : ");
