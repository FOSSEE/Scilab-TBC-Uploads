clc; funcprot(0);//Example 14.1

//Initializing the variables
L1 = 5;
L2 = 10;
d = 0.1;
f = 0.08;
Za_Zc = 4;         //difference in height between A and C 
g = 9.81 ;
Pa = 0;
Va = 0; 
Za_Zb = -1.5;
V = 1.26;
rho = 1000;

//Calculations
D = 1.5 + 4*f*(L1+L2)/d ; // Denominator in case of v^2 
v = sqrt(2*g*Za_Zc/D);
Pb = rho*g*Za_Zb - rho*V^2/2*(1.5+4*f*L1/d);
disp(Pb/1000,"Pressure in the part at B (kN/m2):",v, "Mean Velocity at C (m/s):");