//Example 8.6.1: Lx and Rx
clc;
clear;
close;
//given data :
R1=560;// in kilo-ohm
R2=6.3;// in kilo-ohm
R3=120; // in kilo-ohm
Ci=0.01;// in micro-farad
Sensitivity=10;// in mm/micro-A
del_r=1;// in ohm
Rx=(R2*R3)/R1;
disp(Rx,"unknown resistance,Rx(k-ohm) = ")
Lx=R2*10^3*R3*10^3*Ci*10^-6;
disp(Lx,"unknown inductanceLx(H) = ")
