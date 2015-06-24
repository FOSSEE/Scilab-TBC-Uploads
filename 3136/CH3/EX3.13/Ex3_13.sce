clear all; clc;
//This numerical is Ex 3_7E,page 54.

//Velocity diagrams are not drawn. This is with Scilab team's permission.
//The numerical part of the question has been solved.

r_t=5.2
r_h=3.5
N=4500

A=%pi*(r_t^2-r_h^2)
printf(" A is equal to %0.2f in^2",A)
disp("On converting to feet we get A= 0.322 ft^2")

r_m=[0.5*(r_t^2+r_h^2)]^0.5
printf("\n rm is equal to %0.2f in",r_m)
disp(" On converting to feet we get rm =0.369ft")

r_m=0.369//in feet
U_m=(N*%pi*r_m)/30
printf("\n U_m is equal to %0.0f ft/s",U_m)

disp("From inlet velocity triangle we have V_1/sin(ß_1+pi/2)+U_m/sin(aplha_1-ß_1)")
disp("Hence V_1=174*(sin(120)/sin(25))")

V_1=174*(sin(120*%pi/180)/sin(25*%pi/180))
printf(" V_1 = %0.2f ft/s",V_1)

alpha_1=(55*%pi)/180//radians
V_1=356.5//rounded off
V_a=V_1*cos(alpha_1)
printf("\n Thus V_a= %0.1f ft/s",V_a)

rho=0.095
V_a=204.5//rounded off
A=0.322//rounded off
m=rho*V_a*A
printf("\n m= %0.3f lb/s",m)

disp("From delta_E=U_m*V_u1 we have P_s=m*delta_E")
m=6.25/32.2//in lbf
U_m=174//rounded off
V_u1=356.5*sin((55*%pi)/180)
delta_E=U_m*V_u1
P_s=m*delta_E
printf(" P_s is equal to %0.1f ft-lbf/s",P_s)
disp("On converting we get P_s = 17.9hp")













