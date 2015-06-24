clear all; clc;
//This numerical is Ex 3_5E,page 52.

//this numerical is based on numerical 3.4E
//values found in the book for numerical 3.4E will be used to solve this numerical(3.5E)

delta_Et=437.1
U_1=22.6
U_2=9.56
V_m2=2.56
V_2=2.56

V_r1=1.66
W_u1=3.26
W_1=(V_r1^2+W_u1^2)^0.5
printf("\n W_1 is equal to %0.2f ft/s",W_1)

W_2=(U_2^2+V_m2^2)^0.5
printf("\n W_2 is equal to %0.2f ft/s",W_2)

V_u1=19.3
V_1=(V_r1^2+V_u1^2)^0.5
printf("\n V_1 is equal to %0.2f ft/s",V_1)

Rt=0.5*[(U_1^2-U_2^2)+(W_2^2-W_1^2)]/(delta_Et)
printf("\n Thus the value Rt is equal to %0.3f",Rt)
