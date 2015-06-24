

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.9 ")

//Cross sectional area in m2
A = 1;
//Heat transfer coefficient on hot side in W/m2-K
hchot = 10;
//Heat transfer coefficient on cold side in W/m2-K
hccold = 40;

//Length for heat transfer in m
L = 0.1;
//Thermal conductivity in W/m-K
k = 0.7;

//Resistances in K/w
R1 = 1/(hchot*A);
R2 = L/(k*A);
R3 = 1/(hccold*A);

//Total resistance
Rtotal = R1+R2+R3;

//Temperature on hot side in K
T1 = 330;
//Temperature on cold side in K
T2 = 270;

disp("Rate of heat transfer per unit area in W is")
//Rate of heat transfer per unit area in W
q = (T1-T2)/(R1+R2+R3)
