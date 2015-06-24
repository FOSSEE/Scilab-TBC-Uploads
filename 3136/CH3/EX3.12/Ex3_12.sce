clear all; clc;
//This numerical is Ex 3_6S,page 54.

disp("The velocity diagram is similar to that in figure 3.19")

r_t=0.36
r_h=0.21
N=4800
V_1=183

r_m=[0.5*(r_t^2+r_h^2)]^0.5
printf("\n rm is equal to %0.3f m",r_m)

A=%pi*(r_t^2-r_h^2)
printf("\n A is equal to %0.2f m^2",A)

r_m=0.295//rounding off rm
U=(N*%pi*r_m)/30
printf("\n U is equal to %0.1f m/s",U)

V_a1=V_1*cos(60*%pi/180)//angle is given as 60 degrees
printf("\n V_a1 is equal to %0.2f m/s",V_a1)

V_u1=V_1*sin(60*%pi/180)//angle is given as 60 degrees
printf("\n V_u1 is equal to %0.1f m/s",V_u1)

//let tan(betaf1)=(Vu1-U)/Va1=x
x=(V_u1-U)/V_a1
printf("\n tan(ß1) is equal to %g m/s^2",x)

beta_f1=(atan(x))*180/%pi
printf("\n We have ß_b1= ß_f1= %0.2f degrees",beta_f1)//value in book is 6.35 degrees Difference is obtained because actual value of x is substituted. Value substituted in the book is not 0.111 or 0.11147.

disp("ß_f1=ß_b1. Also ß_b2=ß_f2=alpha_1=60 degrees")
disp("From the velocity diagram we have V_u2=W_u1=V_u1-U")
W_u1=V_u1-U
printf("\n Thus W_u1 = %0.2f m/s",W_u1)

//let l=Ps/m=U*(Vu1+Vu2)
V_u2=W_u1//already stated above
l=U*(V_u1+V_u2)
printf("\n P_s/m=U*(V_u1+V_u2) is equal to %g (m/s)^2",l)
disp("Thus we can round it off to 2.5*10^4 (m/s)^2")

disp("Where m=rho*V_a1*A")
rho=1.36
V_a1=91.5//rounded off
A=0.269//rounded off
m=rho*V_a1*A
printf("\n m= %0.1f kg/s",m)

disp("Thus we can determine P_s")
l=2.5*10^4//rounded off value
m=33.5//rounded off value
P_s=(l*m)
printf(" P_s =%0.0f W",P_s)
disp("Thus on rounding off P_s is equal to 837kW")














