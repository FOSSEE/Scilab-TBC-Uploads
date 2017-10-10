// Calculating the amount of water required per second, area of water duct and pumping power
clc;
disp('Example 4.27, Page No. = 4.52')
// Given Data
Q = 800;// Stator copper losses (in kW)
Ti = 38;// Temperature of water inlet (in degree celsius)
To = 68;// Temperature of water outlet (in degree celsius)
Ns = 48;// Number of slots
v = 1;// velocity (in meter per second)
p = 300*10^(3);// Pumping pressure (in N per meter square)
n = 0.6;// Efficiency
// Calculation of the volume of water required per second
T = To-Ti;// Temperature rise of water (in degree celsius)
Vwl = 0.24*Q/T;// Amount of water (in litre per second)
Vwm = Vwl*10^(-3);// Amount of water (in meter cube per second)
N_cond = 2*Ns;// Since each slot has two conductors  Total number of stator conductors
N_sub_cond = 32*N_cond;// Since each conductor is subdivided into 32 sub-conductors
Vw_sub_cond = Vwl/N_sub_cond;// Volume of water required for each sub-conductors (in litre per second)
disp(Vw_sub_cond,'Volume of water required for each sub-conductors (litre per second)=');
A = Vw_sub_cond*10^(-3)/v;// Area of each duct (in meter square)
A = A*10^(6);// Area of each duct (in mm square)
disp(A,'Area of each duct (mm square)=');
Q = 800-500;// Since it ia a 500 KW direct cooled turbo-alternator (in kW)
P = (Q*10^(3)*Vwm/n)*10^(-3);// Pumping power (in kW)
disp(P,'Pumping power (kW)=');
//in book Vwl is equal to 0.00208 (litre per second), A is 2 (mm square) and pumping power is 3.2 (kW).  The answers vary due to round off error
