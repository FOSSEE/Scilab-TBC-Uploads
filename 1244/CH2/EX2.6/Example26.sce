

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.6 ")

//diameter of fin in m
d = 0.0025;
//Perimeter in m
P = %pi*d;
//Area in m2
A = ((%pi*d)*d)/4;
//Surface temperature in degree C
Ts = 95;
//Ambient temperature in degree c
Tinfinity = 25;
//Heat transfer coefficient in W/m2K
hc = 10;
//From table 12, value of thermal conductivity in W/mK
k = 396;

disp("Case of an infinitely long fin")
disp("Heat loss for the “infintely long” fin in W is")
//Heat loss for the “infintely long” fin in W
qfin = ((((hc*P)*k)*A)^0.5)*(Ts-Tinfinity)

disp("Case 2: Fin length of 2.5cm")
//Length in cm
L = 2.5/100;
//Parameter m
m = ((hc*P)/(k*A))^0.5;
disp("Heat loss in this case in W is")
//Heat loss in this case in W
qfin = qfin*((sinh(m*L)+(hc/(m*k))*cosh(m*L))/(cosh(m*L)+(hc/(m*k))*sinh(m*L)))

disp("For the two solutions to be within 5%")
//((sinh(m*L)+(hc/(m*k))*cosh(m*L))/(cosh(m*L)+(hc/(m*k))*sinh(m*L))) must
//be less than 0.95
disp("L must be greater than 28.3cm")
