clc
//initialization of new variables
clear
S=3 //cm^2
m=15 //kg/s
alpha2=68.5 //degrees
r=0.3 //m
w=1000 //RPM
ma=100 //kg
rho=1000 //kg/m^3
g=9.8 //m/s^2
//calculations
S=S*10^-4
alpha2=alpha2*%pi/180
U=r*w*2*%pi/60
c2=m/(rho*S)
cz=c2*cos(alpha2)
beta2=atan((c2*sin(alpha2)-U)/cz)
P=m*U*2*cz*tan(beta2)
v=P/(ma*g)
//results
printf('beta_2 = %.1f degrees',beta2*180/%pi)
printf('\n v = %.2f m/s',v)
