// Calculating the temperature rise
clc;
disp('Example 4.43, Page No. = 4.77')
// Given Data
az = 30*10^(-6);// Cross-sectional area (in meter square)
Iz = 20*10^(3);// Current (in Ampere)
t = 50;// Time (in mili second)
p = 0.021*10^(-6);// Resistivity of conductor (in ohm*meter)
h = 418;// Specific heat (in J/kg degree celsius)
g = 8900;// Density (in kg per meter cube)
// Calculation of the temperature rise
T = Iz^(2)*p*t*10^(-3)/(g*az^(2)*h);// Temperature rise (in degree celsius)
disp(T,'Temperature rise (degree celsius)=');
//in book answer is 125 degree celsius.  The answers vary due to round off error

