//Finding of Pressure intensity
//Given
spgr=0.8;               //Specific gravity of oil
spgr1=1.5;                
rho=1000;               //Density of water in Kg/m^3
g=9.81;                 //Gravitational force m/s^2
h1=2;                    //Depth in meter
//To Find
w=rho*g*spgr;
p=w*h1;                  //Pressure at the interface
disp("Pressure Intensity ="+string(p)+" N/m^2");
w1=rho*g*spgr1;
p1=1.5969+w1;
disp("Pressure Intensity at Bottom ="+string(p1)+" N/m^2");
