// Exa 6.22
clc;
clear;
close;
// Given data
V_DD= 20;// in V
I_DSS= 9;// in mA
V_P= -3;// in V
R1= 0.3*10^3;// in kΩ
R2= 1.7*10^3;//in kΩ
R_D= 3.2;// in kΩ
R=1;// in kΩ
V_G= V_DD*R1/(R1+R2);// in V
//I_D= I_DSS*[1-V_GS/V_P]^2                             (i)
// V_G= V_GS+I_D*R or I_D= (V_G-V_GS)/R     (ii)
// From (i) and (ii)
//V_GS*1/V_P^2+V_GS*[1/(R*I_DSS)-2/V_P]+[1-V_G/(R*I_DSS)]=0
V_GS= [1/V_P^2 1/(R*I_DSS)-2/V_P 1-V_G/(R*I_DSS)];
V_GS= roots(V_GS);
V_GS= V_GS(2);// in V (selecting lower value)
I_D= I_DSS*[1-V_GS/V_P]^2;// in mA
disp(I_D,"The value of I_D in mA is : ")
V_S= I_D*R;//in V
V_D= V_DD-I_D*R_D;// in V
V_DS= V_D-V_S;// in V
gm= -2*I_DSS/V_P*(1-V_GS/V_P);// in mA/V
disp(V_DS,"The value of V_DS in volts is : ")
disp(gm,"The transconductance in mA/V is : ")
