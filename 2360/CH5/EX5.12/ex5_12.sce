// Exa 5.12
format('v',7);clc;clear;close;
// Given data
P = 0.4;//power dissipation in each arm in W
Rarm = 150;// in ohm
//P = (I^2)*Rarm;
I = sqrt(P/Rarm);// in A
//Apply KVL to the loop ABCEFA,  (-I*Rarm) - (I*Rarm) - (2*I) + 25 - (2*I*R) = 0;
R = ((-I*Rarm) - (I*Rarm) - (2*I) + 25)/(2*I);//required series resistance in ohm
disp(R,"The required series resistance in Ω is");
