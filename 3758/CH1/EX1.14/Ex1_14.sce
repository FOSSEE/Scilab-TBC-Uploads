v2=0.0112; //final volume in m^3
v1=0.0113; //initial volume in m^3
dv=v2-v1; // calculating change in volume
p1=6.87*10^6; //initial pressure in N/m^2
p2=13.73*10^6; //final pressure in N/m^2
dp=p2-p1; //calculating change in pressure
k=-dp/(dv/v1); //calculating bulk modulus of elasticity
printf('bulk modulus of elasticity is %f N/m^2',k);
