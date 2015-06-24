clear all; clc;
//This numerical is Ex 3_6E,page 53.
disp("The velocity diagram is similar to that in figure 3.19")

r_t=1.2
r_h=0.7
N=4800
V_1=600

r_m=[0.5*(r_t^2+r_h^2)]^0.5
printf("\n r_m is equal to %0.3f ft",r_m)

A=%pi*(r_t^2-r_h^2)
printf("\n A is equal to %0.2f ft^2",A)

r_m=0.982//rounding off rm
U=(N*%pi*r_m)/30
printf("\n U is equal to %0.1f ft/s",U)

V_a1=V_1*cos(60*%pi/180)//angle is given as 60 degrees
printf("\n V_a1 is equal to %0.2f ft/s",V_a1)

V_u1=V_1*sin(60*%pi/180)//angle is given as 60 degrees
printf("\n V_u1 is equal to %0.1f ft/s",V_u1)

//let tan(betaf1)=(Vu1-U)/Va1=x
x=(V_u1-U)/V_a1
printf("\n tan(ßf1) is equal to %0.4f",x)
beta_f1=(atan(x))*180/%pi
printf("\n Hence ßf1= %0.2f degrees",beta_f1)

disp("ßf1=ßb1. Also ßb2=ßf2=alpha_1=60 degrees")
disp("From the velocity diagram we have V_u2=W_u1=V_u1-U")
W_u1=V_u1-U
printf("\n Thus Wu1 = %g ft/s",W_u1)

//let l=Ps/m=U*(Vu1+Vu2)
V_u2=W_u1//already stated above
l=U*(V_u1+V_u2)
printf("\n P_s/m=U*(V_u1+V_u2) is equal to %g (ft/s)^2",l)
disp("Thus we can round it off to 29*10^5 (ft/s)^2")

disp("Where m=rho*V_a1*A")
rho=0.085/32.2
m=rho*V_a1*A
printf("\n m= %0.2f slug/s",m)

disp("Thus we can determine P_s")
l=2.69*10^5//rounded off value
m=2.36//rounded off value
P_s=(l*m)/550
printf(" P_s =%0.0f hp",P_s)














