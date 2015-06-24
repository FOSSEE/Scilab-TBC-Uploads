//Finding of Height
//Given
p=4.9*10^4;           //Pressure intensity in N/mm^2
rho=1000;             //Density of water in kg/m^3
g=9.81;               //gravitational force in m/sec^2
spgr=0.8;             //Specific gravity of oil
w=rho*g;
w1=rho*g*spgr;
//To Find
h=p/w;
h1=p/w1;
disp("Height of water ="+string(h)+" m");
disp("Height of oil ="+string(h1)+" m");
