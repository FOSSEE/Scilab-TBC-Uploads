

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.4 ")

//Temperature of liquid nitrogen in degree K
Tnitrogen = 77;
//Radius of container in m
ri = 0.25;
//Temperature of surrounding air in degree K
Tinfinity = 300;
//Thermal conductivity of insulating silica powder in W/mK
k = 0.0017;
//Outer radius of container with insulation in m
ro = 0.275;
//Latent heat of vaporization of liquid nitrogen in J/kg
hgf = 200000;
//convection coefficient at outer surface in W/m2K
hco = 20;

//Calcaulting heat transfer to nitrogen
q = (Tinfinity-Tnitrogen)/(1/((((4*%pi)*ro)*ro)*hco)+(ro-ri)/((((4*%pi)*k)*ro)*ri));

disp(" rate of liquid boil-off of nitrogen per hour is")
//rate of liquid boil-off of nitrogen per hour
m = (3600*q)/hgf
