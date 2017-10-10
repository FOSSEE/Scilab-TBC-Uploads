clear
clc
//Example 6.6 FORCES ACTING ON A PIPE BEND
p=75*10^3 //[Pa]
r=0.5; //[m]
A=%pi*r^2 //area[m^2]
S=0.94;
rho=S*1000 //drnsity[kg/m^3]
Gamma=S*9.81 //specific weight of oil[kN/m^3]
V=1.2; //volume of oil[m^3]
Q=2; //[m^3/s]
m=rho*Q //mass flow rate[kg/s]
v=2.55; //[m/s]
theta=30; //degrees
//Reaction force
//Rx+p*A-p*A*cos(theta)=m*v*cos(theta)-m*v
Rx=-(p*A+m*v)*(1-cosd(theta))/10^3 //[kN]
//Ry+p*A*sin(theta)=-m*v*sin(theta)
Ry=-(p*A+m*v)*sind(theta)/10^3 //[kN]
We=4; //empty weight of bend[kN]
Rz=(Gamma*V)+We //[kN]
//Reaction force vector
R=[Rx Ry Rz] //[kN]
printf("\n The net force required to hold the bend in place, F =(%.2f kN)i+(%.1f kN)j+(%.1f kN)k.\n",R(1),R(2),R(3))