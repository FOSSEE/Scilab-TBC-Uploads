

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.6 ")

//Thermal conductivity of aluminium in W/m-K
k = 240;
//Thickness of each plate in m
t = 0.01;
//Temperature at the surfaces of plates in C is given as
Ts1 = 395;
Ts3 = 405;
//From Table 1.6 the contact resistance at the interface in K/W is
R2 = 0.000275;
//Thermal resistance of the plates in K/W is
R1 = t/k;
R3 = t/k;

disp("Heat flux in W/m2-K is")
//Heat flux in W/m2-K
q = (Ts3-Ts1)/(R1+R2+R3)

//Since the temperature drop in each section of this one-dimensional system is propor-tional to the resistance.

disp("Temperature drop due to contact resistance in degree C is")
//Temperature drop due to contact resistance in degree C
deltaT = (R2/(R1+R2+R3))*(Ts3-Ts1)
