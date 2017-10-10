clc;
l=25; //length of plate in centimeter
b=5; //bredth of plate in centimeter
a=(l*b)*10^-4; //calculating area of plate in m^2
v=2; //velocity with which plate slides in meter/sec
theta=30; //angle of plate with surface in degree
y=0.002 //gap between plate and inclined surface
r=l*sin(theta*(3.14/180));//viscous resistance in kg
u=(r*y)/(v*a); //calculating viscosity of oil
printf('viscosity of oil is %f kg-sec/m^2',u);
