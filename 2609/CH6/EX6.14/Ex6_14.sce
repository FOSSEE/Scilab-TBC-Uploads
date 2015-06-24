//Ex 6.14
clc;
clear;
close;
format('v',4);
//Data given
R1=6.8;//kohm
Ri=100;//kohm
R2=1.5;//kohm
Cf=0.01;//micro F
Vsat=14;//V
Vo_pp=2*R2/R1*Vsat;//V////Peak to peak output of triangular wave
disp(Vo_pp,"Peak to peak output of triangular wave(V)");
format('v',5);
f0=R1*1000/(4*Ri*10^3*Cf*10^-6*R2*10^3)/1000;//kHz//Oscillating Frequency
disp(f0,"Oscillation frequency(Hz)");
