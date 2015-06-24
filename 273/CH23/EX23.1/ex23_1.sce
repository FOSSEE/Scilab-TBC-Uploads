clc;clear;
//Example 23.1
//calculation of relative permittivity

//given values

E=1000;//electric field in V/m
P=4.3*10^-8;//polarization in C/m^2
e=8.85*10^-12;//permittivity in F/m


//calculation
er=1+(P/(e*E));
disp(er,'relative permittivity of NaCl is ');
