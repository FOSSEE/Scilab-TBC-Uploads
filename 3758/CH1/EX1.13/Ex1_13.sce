clc;
p1=75; //intial pressure in kg/cm^2
p2=140; //final pressure in kg/cm^2
dp=(p2-p1); //calculating change in pressure
dv=-0.147; //percentage  decrease in volume 
v=100; //original volume in percentage
k=dp/(dv/v); //calulating bulk modulus of elasticity
printf('bulk modulus of elasticity of liquid is %f kg/cm^2',k);
