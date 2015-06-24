clc
clear
printf("Example 5.1 | Page number 119 \n\n");
//Find the work output in KJ/kg
//Given data
Q = -24; //KJ/kg

p1 = 5e5; //N/m^2
t1 = 227; //°C
V1 = 50; //m/s
v1 = 0.78; //m^3/kg

p2 = 1e5; //N/m^2
t2 = 57; //°C
V2 = 100; //m/s
v2 = 0.97; //m^3/kg

g = 9.81; //m/s^2 //acceleration due to gravity

delta_z = -5; //m 
Cv = 0.7; //KJ/kg 
delta_u = Cv*(t2 - t1); //KJ/kg //change in internal energy //u2-u1

//Solution
delta_h = delta_u + (p2*v2 - p1*v1)*.001; //KJ/kg //change in enthalpy //h2-h1

W_x = Q - (delta_h + (V2^2 - V1^2)/2*.001 + g*delta_z*.001); //kJ/kg //Work Output

printf("Work output = %.2f KJ/kg",W_x);
