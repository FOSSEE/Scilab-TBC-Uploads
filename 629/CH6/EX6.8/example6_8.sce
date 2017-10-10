clear
clc
//Example 6.8 DRAG FORCE ON WIND-TUNNEL MODEL
ro=0.5; //radius of tunnel[m]
A1=%pi*ro^2 //[m^2]
p1=1.5*10^3; //[Pa]
p2=10^3; //[Pa]
v1=30; //velocity at inlet[m/s]
rho=1; //[kg/m^3]
//velocity profile, v=v1*K(r/ro)
//Q1=Q, A1*v1=A*v
K=A1*v1*(integrate('v1*(r/ro)*2*%pi*r','r',0,ro))^-1
F1=rho*A1*v1^2 //momentum at cross-section-1
F2=integrate('rho*(v1*K*(r/ro))^2*2*%pi*r','r',0,ro) //at cross-section-2
Fx=F2-F1
//From momentum equation in x-direction, Fx=p1*A-p2*A-Fd
Fd=(p1-p2)*A1-Fx //Drag force[N]
printf("\n The drag force on the device and support panes = %.f N.\n",Fd)