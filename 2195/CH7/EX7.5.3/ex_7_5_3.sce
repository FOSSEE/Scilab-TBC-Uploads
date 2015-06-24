//Example 7.5.3: deflection
clc;
clear;
close;
//given data :
format('v',4)
s=8;//sensivity in mm/micro amperes
R1=1;// in kilo-ohm
R2=5;// in kilo-ohm
R3=2; // in kilo-ohm
R4=10;//in kilo-ohm
Rg=150;//in ohm
E=6;//in V
r=10;// unbalance resistance in ohm
del_r=10;// in kilo-ohm
R4_1=((R4*10^3)+r)*10^-3;
Vd=(E*R4_1)/(R2+R4_1);
Vc=(E*R3)/(R1+R3);
E_th=E*((R4_1/(R2+R4_1))-(R3/(R1+R3)));
R_th=((R1*R3)/(R1+R3))+((R2*R4)/(R2+R4));
Ig=(E_th/((R_th*10^3)+Rg))*10^6;
d=Ig*s;//deflection in mm
disp(d,"deflection in mm")
//answer is wrong in the textbook
