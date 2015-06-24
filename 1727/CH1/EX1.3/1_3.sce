clc 
clear
//Initialization of variables
vis=2.5/10 //N s/m^2
D=15 //cm
N=180
dy=0.0001 //m
l=0.15 //m
b=0.25 //m
r=0.152 //m
//calculations
dv=%pi *D*N/60/100
Tau=vis*dv/dy
Tor=Tau*%pi*l*b*r/2
P=Tor*2*%pi*N/60
//results
printf("Power required = %d W",P)
disp("The answer is a bit different due to rounding off error in textbook.")
