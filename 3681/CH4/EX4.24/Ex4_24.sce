// Calculating the temperature rise of hydrogen
clc;
disp('Example 4.24, Page No. = 4.51')
// Given Data
Q = 750;// Losses (in kW)
Ti = 25;// Inlet temperature of air (in degree celsius)
H = (2000+760);// Baromatric height (in mm of mercury)
VH = 10;// Volume of hydrogen leaving the coolers (in meter cube per second)
cp = 12540;// Specific heat of air at constant pressure (in J per kg per degree celsius)
V = 11.2;// Volume of 1 kg of air at N.T.P. (in meter cube)
// Calculation of the temperature rise of hydrogen
T = (V*Q*10^(3)/(cp*VH))*((Ti+273)/273)*(760/H);// Temperature rise of hydrogen(in degree celsius)
disp(T,'Temperature rise of hydrogen (degree celsius)=');
//in book ans is 20 (degree celsius).  The answers vary due to round off error
