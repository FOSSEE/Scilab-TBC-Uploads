clc
//Initialization of variables
h=76 //cm
d=13.5951 //g/cc
g=980.655 //cm/s^2
T=273.15 //K
v=22414.6 //cm^3 /mol
//calculations
P=h*d*g
R=P*v/(T)
//results
printf("Gas constant = %.3e ergs/deg. mol",R)
