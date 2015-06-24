clear all; clc;
//This numerical is Ex 3_5S,page 53.

//this numerical is based on numerical 3_4S
//values found in the book for numerical 3_4S will be used to solve this numerical(3.5S)

delta_Et=40.85
U_1=6.9
U_2=2.92
V_m2=0.782
V_2=0.782//since V2=Vm2

V_r1=0.508
W_u1=0.997
W_1=(V_r1^2+W_u1^2)^0.5
printf("\n W1 is equal to %0.2f ft/s",W_1)

W_2=(U_2^2+V_m2^2)^0.5
printf("\n W_2 is equal to %0.2f ft/s",W_2)

Rt=0.5*[(U_1^2-U_2^2)+(W_2^2-W_1^2)]/(delta_Et)
printf("\n Thus the value Rt is equal to %0.3f",Rt)
