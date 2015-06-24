

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.1 ")

//Heat generation rate in W/m3
qg = 1000000;
//Length along which heat will be dissipated in m (thickness)
L = 0.01;
//Thermal conductivity at the required temperature in W/mK
k = 64;

//Temperature of surrounding oil in degree C
Tinfinity = 80;
//Temperature of heater in degree C to be maintained
T1 = 200;

disp("heat transfer coefficient in W/m2K from a heat balance")
//Heat transfer coefficient in W/m2K
h = ((qg*L)/2)/(T1-Tinfinity)
