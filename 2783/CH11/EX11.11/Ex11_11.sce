clc
//initialization of new variables
clear
r=0.1 //m
RPM=1000 //RPM
c2=30 //m/s
S=2 //cm^2
beta3=60 //degrees
alpha2=90 //degrees
rho=1000 //kg/m^3
//calculations
beta3=beta3*%pi/180
alpha2=alpha2*%pi/180
S=S*10^-4
U=RPM*r*2*%pi/60
w2=c2-U
w3=w2
CthD=w2*sin(alpha2)+w2*sin(beta3)
m=rho*c2*S
T=m*r*CthD
P=m*U*CthD
//results
printf('mass flow rate is %.2f kg/s',m)
printf('\n Torque T = %.2f N m',T)
printf('\n Power P = %.2f W',P)
