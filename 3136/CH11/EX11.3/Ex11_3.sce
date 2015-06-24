clear all; clc;

V= 40//in mph
V=58.9//in mph
//more accurately
V= 40*(5280/3600)
a=0.27
V1=V*(1-a)
printf('V1 is equal to %0.1f ft/s',V1)

N=60
D=50
U=(N*%pi/30)*(D/2)
printf('\nU is equal to %0.1f ft/s',U)

//from velocity triangle
A=90+45
printf('\nA is equal to %g degrees',A)

//from cosine law
W=(U^2+V1^2-2*U*V1*cos(A*%pi/180))^0.5
printf('\nW is equal to %0.1f ft/s',W)

//from sine law
sinB=V1*(sin(A*%pi/180))/W
printf('\nsinB is equal to %0.4f ft/s',sinB)

B=asin(sinB)*180/%pi
printf('\nB is equal to %0.1f degrees',B)

setting_angle=85
alpha=B-(90-setting_angle)
printf('\nalpha is equal to %0.1f degrees',alpha)

//from figure
Cl=0.58
Cd=0.027
rho=0.0763
gc=32.2
c=1.2
Wr=189.8//rounded off W
Fu=rho*Wr^2*c*(Cl*sin(B*%pi/180)-Cd*cos(B*%pi/180))/(2*gc)
printf('\nFu is equal to %0.3f lb/ft',Fu)

disp("After rounding off the tangential force (Fu) is equal to 3.38 lb/ft")
