// Exa 3.25
format('v',7);
clc;
clear;
close;
// Given data 
R1= 10;// in kΩ
R1=R1*10^3;// in Ω
R2= 10;// in kΩ
R2=R2*10^3;// in Ω
I_C=.5;// mA
V_T= 0.025;//in V
I_C= I_C*10^-3;// in A
V= 10;// in V
Vth= V*R1/(R1+R2);// in V
Rth=  R1*R2/(R1+R2);//in Ω
vo= I_C*Rth;// in V
vi=V_T;// in V
vo_by_vi= vo/vi;//in V/V
disp(vo_by_vi,"The value of vo/vi in V/V is : ")
