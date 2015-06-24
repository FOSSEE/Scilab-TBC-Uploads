// Calculating the maximum excitation voltage and the sensitivity
clc;
Rm=10000;
Rp=Rm/15;
R=600;
P=5;
ei= (P*R)^0.5;
disp(ei,'Maximum excitation voltage (V)=')
S=ei/360;
disp(S,'Sensitivity (V/degree)=')