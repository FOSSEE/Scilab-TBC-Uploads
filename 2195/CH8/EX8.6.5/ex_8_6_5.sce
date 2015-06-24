//Example 8.6.5: L3 and R3
clc;
clear;
close;
format('v',5)
//given data :
R1=10;// in kilo-ohm
R2=2;// in kilo-ohm
R4=1;// in kilo-ohm
C2=1*10^-6;// in micro-farad
w=3000;// in rad/sec
L3=(R1*10^3*R4*10^3*C2)/(1+((R2*10^3)^2*(C2^2)*w^2))
R3=R2*10^3*L3*C2*w^2;//
disp(R3,"unknown resistance in ohms")
disp(L3,"inductance in henry ")
//resistance is calculated wrong in the textbook
