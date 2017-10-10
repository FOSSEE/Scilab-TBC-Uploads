// Calculating the final steady temperature rise of coil surface and hot spot temperature rise
clc;
disp('Example 4.13, Page No. = 4.21')
// Given Data
S = 0.125;// Cooling surface (in meter square)
l = 0.8;// Length of mean turn in meter
Sf = 0.56;// Space Factor
A = 120*50;// Area of cross-section (in mm square)
Q = 150;// Dissipating loss (in Watts)
emissivity = 30;// Specific heat dissipation (in Watt per degree celsius per meter square)
pi = 8;// Thermal resistivity of insulating material (in ohm*meter)
// Calculation of the final steady temperature rise of coil surface and hot spot temperature rise
Tm = Q/(S*emissivity);// Final steady temperature rise (in degree celsius)
p0 = pi*(1-Sf^(1/2));// Effective thermal resistivity (in ohm*meter)
q = Q/(l*A*10^(-6));// Loss (in Watts per meter cube)
T0 = q*p0*(50*10^(-3))^(2)/8;// Temperature difference between coil surtface and hot spot (in degree celsius)
disp(Tm,'Final steady temperature rise (degree celsius)=');
disp(Tm+T0,'Temperature rise of hot spot (degree celsius)=');
//in book final steady temperature rise (in degree celsius) is equal to 40 and hot spot temperature rise(in degree celsius) is equal to 59.5.  The answers vary due to round off error

