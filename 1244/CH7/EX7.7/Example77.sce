

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 7 Example # 7.7 ")


//Temperature of jet in degree C
T = 20;
//Thermal conductivity in W/mK
k = 0.597;
//Dynamic viscosity in Ns/m2
mu = 0.000993;
//Prandtl number
Pr = 7;
//Mass flow rate in kg/s
m = 0.008;
//Diameter of jet in m
d = 6/1000;
//Total heat flux in W/m2
q = 70000;

//Reynolds number
Re = (4*m)/((%pi*d)*mu);

disp("For r=3mm")
//From Eq. (7.45)
//Heat transfer coefficient in W/m2K
h = (63*k)/d;
disp("Surface temperature at r=3mm in degree C is")
//Surface temperature in degree C
Ts = T+q/h

disp("For r=12mm")
//From Eq. (7.48)
//Heat transfer coefficient in W/m2K
h = (35.3*k)/d;
disp("Surface temperature at r=12mm in degree C is")
//Surface temperature in degree C
Ts = T+q/h
