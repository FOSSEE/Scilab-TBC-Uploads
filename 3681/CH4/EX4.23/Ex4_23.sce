// Calculating the efficiency of machine and amount of cooling water
clc;
disp('Example 4.23, Page No. = 4.50')
// Given Data
MVA = 30;// MVA rating of turbo-alternator
Ti = 15;// Inlet temperature of air (in degree celsius)
To = 45;// Outlet temperature of air (in degree celsius)
H = 750;// Baromatric height (in mm of mercury)
Va = 30;// Volume of air (in meter cube per second)
nf = 0.4;// Fan efficiency
cp = 1000;// Specific heat of air at constant pressure (in J per kg per degree celsius)
V = 0.78;// Volume of 1 kg of air at N.T.P. (in meter cube)
pf = 0.8;// Power factor
// Calculation of the efficiency of machine
T = To-Ti;// Temperature rise limit (in degree celsius)
Q = Va/((V*10^(3)/(cp*T))*((Ti+273)/273)*(760/H));// Total losses (in kW)
P_out = 30*10^(3)*pf;// Output power (in kW)
n = P_out/(P_out+Q)*100;// Fan power (in kW)
disp(n,'(a) Efficiency of machine (in percentage)=');
// Calculation of the amount of cooling water
T = 8;// Temperature rise of water (in degree celsius)
Vw = 0.24*Q/T;// Amount of cooling water (in litre per second)
disp(Vw,'(b) Amount of cooling water (litre per second)=');
//in book efficiency is equal to 95.7% and amount of cooling water 32.4 (litre per second).  The answers vary due to round off error

