clc;
dp=840 ;// pressure in kg/cm^2
w=1025; // specific weight of water in kg/m^3
k=24*10^3; // bulk modulus of elasticity in kg/cm^2
v=dp/k; //v =dv/v calculating change in volume
s=1/w; // calculating specific volume of water at surface of ocean in m^3/kg
dv=v/w; // calculating change in specific volume between surface and depth in m^3/kg
v1=s-dv; // calculating specific volume at depth
w1=1/v1; // calculating specific weight of water at depth
printf('specific weight of water at depth is %f kg/m^3',w1);
