clc;
dp=0.0018*10^4; // difference in inside and outside surface of bubble in kg/mm^2
T=0.0075*10^3; // surface tension of water in contact in kg/mm
Temp=20; //temperature of air in degree
r=(2*T)/dp // calculating radius of droplet of water
d=2*r; // calculating diameter of droplet of water
printf('diameter of droplet of water is %f mm',d);
