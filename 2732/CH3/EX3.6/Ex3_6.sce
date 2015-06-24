clc
// initialization of variables
clear
epsillon_A= 1000*10^-6 
epsillon_B= 720*10^-6 
epsillon_C= 600*10^-6 
th_B=120 // degrees
th_C=240 // degrees
//calculations
th_B=th_B*%pi/180
th_C=th_C*%pi/180
// we need to solve for epsillon_y and gamma_xy
// Ax=B
ep_x=epsillon_A
A=[sin(th_B)^2 sin(th_B)*cos(th_B)
   sin(th_C)^2 sin(th_C)*cos(th_C)]
C=[epsillon_B-ep_x*cos(th_B)^2; epsillon_C-ep_x*cos(th_C)^2]   
x=inv(A)*C
ep_y=x(1,1)
gam_xy=x(2,1)
epsillon_x=ep_x
epsillon_y=ep_y
gamma_xy=gam_xy
epsillon_1=1/2*(epsillon_x+epsillon_y)+(1/2)*sqrt((epsillon_x-epsillon_y)^2+gamma_xy^2)
epsillon_2=1/2*(epsillon_x+epsillon_y)-(1/2)*sqrt((epsillon_x-epsillon_y)^2+gamma_xy^2)
// Results
printf('The principal strains are %.3e, %.3e',epsillon_1,epsillon_2)
