clc;
l=20; //length of edge of cubical block in centimeter
theta=20; //inclination of plane with horizontal in degree
w=20; //weight of cubical block in kg
y=0.025*10^-3; //thickness of film im meter
u=0.22*10^-3; //viscosity of oil in kg-sec/m^2
f=w*sin(theta*(3.14/180)); //calculating force causing downward motion of block 
a=(l^2)*10^-4; //calculating area of one face of cube
t=f/a; //calculating shear resistance
v=(t*y)/u; //calculating terminal velocity
printf('terminal velocity is %f meter/se',v);
