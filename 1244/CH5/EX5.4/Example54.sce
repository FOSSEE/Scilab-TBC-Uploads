

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 5 Example # 5.4 ");

//''Ambient temp in degree C''
TinfinityC = 27;
//''Ambient temp in degree K''
Tinfinity = TinfinityC+273;
//''The criterion for transition is rayleigh number to be 10^9''


//''Value of coefficient of expansion at this temp in degree K inverse''
B = 1/Tinfinity;
//''Value of Prandtl number at this ambient temp''
Pr = 0.71;
//''Diameter of pipe in m''
D = 1;
//''Value of kinematic viscosity at this temp in m2/s''
v = 0.0000164;
//''acceleration due to gravity in m/s2''
g = 9.81;

//''Therefore using Rayleigh number = ((Pr*g*B*deltaT*(D)^3)/v^2) = 10^9''
//''we get the temperature difference in centrigrade to be''
deltaT = 12;
disp("therefore the temperature of pipe in C is")
// temperature of pipe in C
Tpipe = TinfinityC+deltaT


//''From table 13 in Appendix 2, for the case of water and using the same procedure we get''
// temperature difference in C
deltaTw = 0.05;
disp("therefore the temperature of pipe in C is")
// temperature of pipe in C
Tpipew = TinfinityC+deltaTw

disp(" Discussion - For air and water: ")
disp(" Temperature required to induce turbulence is higher in air")
