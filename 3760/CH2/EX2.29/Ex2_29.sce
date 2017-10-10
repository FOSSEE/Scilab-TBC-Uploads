clc;
l=1.2; // length of iron path
a=5*5*10^-4; // area of cross section
uo=4*%pi*10^-7; // permeability for free space
ur=1500; // relative permeability for iron
i=2; // exciting current
n=1000; // number of turns of coil
g=0.5*10^-2; // air gap length
r=(l/(uo*ur*a))+(g/(uo*a)); // net reluctance 
f=(n*i)/r; // flux in coil
fe1=((f^2*l)/(uo*ur*a))/2; 
printf('Field energy stored in iron is %f J\n',fe1);
fe2=((f^2*g)/(uo*a))/2; 
printf('Field energy stored in air gap is %f J\n',fe2);
r1=fe2/fe1; 
printf('Ratio of field energy stored in air gap to field energy stored in iron is %f \n',r1);
d1=fe1/(l*a);
printf('Energy density in iron is %f J/m^3\n',d1);
d2=fe2/(g*a);
printf('Energy density in air gap is %f J/m^3\n',d2);
r2=d2/d1; 
printf('Ratio of energy density in air gap to energy density in iron is %f \n',r2);
