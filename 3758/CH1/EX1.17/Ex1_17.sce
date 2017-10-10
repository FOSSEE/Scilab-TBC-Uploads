clc;
d=0.05*10^-1; // diameter of droplet of water in cm
Pout=1.03; // pressure outside the droplet in kg/cm^2
T=0.0075*10^-2; // surface tension in kg/cm
r=d/2 // radius of droplet in cm
Pin=(2*T)/r; //calcuating pressure inside droplet in kg/cm^2
P=Pin+Pout; // pressure intensity within the droplet of water
printf('pressure intensity within the droplet of water is %f kg/cm^2',P);
