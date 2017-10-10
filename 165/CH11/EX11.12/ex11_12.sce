//Example 11.12
clc;
//Wein's Bridge
//Given values of bridge elements
R1=3100;
C1=5.2*10^-6;
R2=25000;
R4=100000;
f=2.5*10^3;    //frequency in Hz
w=2*%pi*f;
//R3 for Wein's bridge
R3=(R1+invr(R1*(w*C1)^2))*R4/R2;
//C3 for Wein's bridge
C3=(C1*invr((w*R1*C1)^2))*R2/R4;
printf('\nValue of resistence R3 is %.2f ohm\n',R3)
disp(C3,'Value of capacitance C3 is')