clc
clear
//Initialization of variables
c=0.0947 //Btu/lbm F
rho=0.0551 //lbm/ft^3
mu=0.0553 //lbm/hr ft
t1=440 //F
ts=400 //F
t2=80 //F
d=0.1 //in
k=0.0194 //Btu/hr ft^2 F
rho2=558 //lbm/ft^3
v=10 //ft/s
//calculations
Re=d*3600*v*rho/(12*mu)
Nu=0.37*Re^0.6
hc=k*Nu*12/d
ex=log((t1-ts)/(t1-t2))
tau=-ex*d*rho2*c/(12*6*hc)
time=tau*3600
//results
printf("Time required = %d sec",time)
