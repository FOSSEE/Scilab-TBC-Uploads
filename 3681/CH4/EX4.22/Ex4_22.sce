// Calculating the volume of air required per second and fan power
clc;
disp('Example 4.22, Page No. = 4.50')
// Given Data
MVA = 50;// MVA rating of turbo-alternator
Q = 1500;// Total loss (in kW)
Ti = 25;// Inlet temperature of air (in degree celsius)
T = 30;// Temperature limit (in degree celsius)
H = 760;// Baromatric height (in mm of mercury)
P = 2000;// Pressure (in N per meter square)
nf = 0.4;// Fan efficiency
// Assumption
cp = 995;// Specific heat of air at constant pressure (in J per kg per degree celsius)
V = 0.775;// Volume of 1 kg of air at N.T.P. (in meter cube)
// Calculation of the volume of air required per second and fan power
Va = (V*Q*10^(3)/(cp*T))*((Ti+273)/273)*(760/H);// Volume of air (in meter cube per second)
Pf = (P*Va/nf)*10^(-3);// Fan power (in kW)
disp(Va,'Volume of air (meter cube per second)=');
disp(Pf,'Fan power (kW)=');
//in book Va is equal to 42.6 (meter cube per second) and Pf is equal to 212.5 (kW).  The answers vary due to round off error

