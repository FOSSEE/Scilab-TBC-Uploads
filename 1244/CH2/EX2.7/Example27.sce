

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.7 ")

//Thermal conductivity of alumunium in W/mK
k = 200;
//Outer radius of system in m
ro = 5.5/200;
//Inner radius of system in m
ri = 2.5/200;
//Thickness of fin in m
t = 0.1/100;

//Temperature of pipe in  degree C
Ts = 100;
//Temperature of surrounding in degree C
Tinfinity = 25;
//Heat transfer coefficient in W/m2K
h = 65;

//calculating fin efficiency
//From Fig. 2.22 on page 103, the fin efficiency is found to be 91%.

//Area of fin
A = (2*%pi)*((ro+t/2)^2-ri*ri);

disp("The rate of heat loss from a single fin in W is")
//The rate of heat loss from a single fin in W
q = ((0.91*h)*A)*(Ts-Tinfinity)
