close();
clear;
clc;
//at node I, 
R1 = 50; //ohm
R2 = 50; //ohm
X = 25*(%i); //ohm
V2 = 100; //V
V2_arg = 0;
V2 = V2*cos(V2_arg) + (%i)*sin(V2_arg);
I1 = 2.83;
I1_arg = 45*%pi/180;
I1 = I1*cos(I1_arg) + (%i)*I1*sin(I1_arg);
V1 = poly(0,'V1');
pv = I1 - V1/R1 - V1/X - (V1-V2)/R2;
V1 = roots(pv);
I = (V2-V1)/R2;
disp(I,"Current from the voltage source, I = ");