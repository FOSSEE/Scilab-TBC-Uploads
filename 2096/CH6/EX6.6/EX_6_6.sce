//Example 6.6// actual ratio and phase angle
clc;
clear;
Ns=100;//no. of secondary turns
f=50;//frequency in hertz
Np=1;//no. of primary turns
Knom=100
Io=1.8;//amperes
Is=1;//SECONDARY WINDING CURRENT IN AMPERE
Re=1.45;//external burden in ohms
Rs=0.25;//in ohms
La=38.4;//lagging angle in degree
Kt=Ns/Np;//actual ratio
ts=Rs+Re;//total secondary circuit resistance
alpha=90-La;// PHASE ANGLE
Kact= Kt+((Io/Is)*sind(alpha));//actual transformation ratio
Pa=((180/%pi)*(Io*cosd(alpha))/(Kt*Is));//phase angle in degree
disp(Pa,"phase angle in degree is")
disp(Kact,"actual transformation ratio")
