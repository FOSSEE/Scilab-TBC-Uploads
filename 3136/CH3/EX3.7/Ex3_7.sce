clear all; clc;
//This numerical is Ex 3_4E,page 49.

//the value of deltaE2 slightly differs from the value given in the book. However the calculated value is correct for te given substitutions

N=120
r_1=1.8
b_1=0.3

omega=(N*%pi)/30
printf("\n Omega is equal to %0.3f rad/s",omega)

U_1=r_1*omega
printf("\n U_1 is equal to %0.1f ft/s",U_1)

r_m2=(0.5*(1^2+0.4^2))^0.5
//rounding off the value of rm2
r_m2=0.761

U_2=r_m2*omega
printf("\n U_2 is equal to %0.2f ft/s",U_2)

A_1=2*%pi*r_1*b_1
printf("\n A_1 is equal to %0.2f ft^2",A_1)

r_t2=1.0
r_h2=0.4
b_2=0.5
A_2=%pi*(r_t2+r_h2)*b_2
printf("\n A_2 is equal to %0.2f ft^2",A_2)

disp("Assume swirl free flow at discharge that is V_u2=0 and ß_f1=ß_b1, ß_f2=ß_b2.")

V_m2=U_2*tan(15*(%pi/180))
printf("\n So V_m2=U_2tan15 is equal to %0.2f ft/s",V_m2)
disp("Thus now we can determine Q")

V_m2=2.56//rounding off
Q=V_m2*A_2
disp("Q=V_m2*A_2=V_r1*A_1")
printf("\n Thus Q is equal to %0.2f ft^3/s",Q)

disp("Since the value of Q,A_1 is known,we can determine the value of V_r1")
V_r1=Q/A_1
printf(" The value of V_r1 is equal to %0.2f ft/s",V_r1)

beta_f1=27
W_u1=V_r1/tan((beta_f1*%pi)/180)
printf("\n W_u1 is equal to %0.2f ft/s",W_u1)

V_u1=U_1-W_u1
printf("\n The value of V_u1 is %0.2f ft/s",V_u1)

U_1=22.6//rounding off
V_u1=19.3//rounding off
delta_Et=U_1*V_u1
printf("\n delta_Et is equal to %0.1f ft^2/s^2",delta_Et)//the value given in the book is 437.1,but the actual value is as calculated for the given values of U1 and Vu1

m=(62.4/32.2)*5.63
P_s=m*delta_Et
printf("\n Thus P_s is equal to %0.1f ft*lbf/s",P_s)//since value of deltaEt differs from the one given in the book,so does the value of Ps
disp("Converting P_s to hp we get 8.65hp")


















