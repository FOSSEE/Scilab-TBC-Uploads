clear;
clc;
funcprot(0);

//given data
D = 4.31;//in m
H = 543;//in m
Q = 71.4;//in m^3/s
P = 350;//in MW
N = 333;//in rev/min
D1 = 6;//in m
H1 = 500;//in m
g = 9.81;//in m/s^2
rho = 1000;//in kg/m^3

//Calculations
omega = N*%pi/30;
omega_s = omega*(Q^0.5)/(g*H)^0.75;
D_s = D*(g*H)^0.25 /Q^0.5;
P_n = rho*g*Q*H; 
eff_t = P*10^6 /P_n;
Q1 = ((D1/D_s)^2)*(g*H1)^0.5;
P1 = eff_t*rho*g*Q1*H1;
N1 = (30/%pi)*omega_s*((g*H1)^0.75)/(Q1^0.5);

//Results
printf('(a)The specific speed = %.3f rad.',omega_s);
printf('\n The specific diameter = %.3f',D_s);
printf('\n The turbine efficiency is = %.3f',eff_t);
printf('\n(b) The required flow rate = %d m^3/s',ceil(Q1));
printf('\n The expected power output = %.1f MW',P1/(10^6));
printf('\n The rotational speed of the turbine = %.1f rpm.',N1);

