

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.10 ")

//diameter of pipe in m
d = 0.5;
//Epsilon is given as
epsilon = 0.9;
//sigma(constant) in SI units is
sigma = 0.0000000567;
//Temperatures in K are given as
T1 = 500;
T2 = 300;

//Radiation heat transfer coefficient in W/m2K
hr = ((sigma*epsilon)*(T1*T1+T2*T2))*(T1+T2);

//Convection heat transfer coefficient in W/m2K
hc = 20;

//total heat transfer coefficient in W/m2K
h = hc+hr;

disp("Rate of heat loss per meter in W/m is")
//Rate of heat loss per meter in W/m
q = ((%pi*d)*h)*(T1-T2)
