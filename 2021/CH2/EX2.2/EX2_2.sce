//Finding of Depth of Water
//Given
p=100.5525*10^4;                //pressure intensity in N/m^2
spgr=1.025;                //Specific gravity
rho=1000;                  //Density of water in kg/m^3
g=9.81;                    //Gravitational force due to acceleration in m/sec^2
w=rho*g;
//To Find
h=p/w;
disp("Depth of Water = "+string(h)+" m");
