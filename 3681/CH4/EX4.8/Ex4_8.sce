// Calculating the maximum temperature difference between the coil surface and the winding
clc;
disp('Example 4.8, Page No. = 4.14')
// Given Data
t = 25*10^(-3);// Thickness of coil (in meter)
Sf = 0.7;// Space Factor
Loss_cu = 20;// Copper losses (in Watt per kg)
pi = 8;// Thermal resistivity of paper insulation(in ohm*meter)
D_cu = 8900;// Density of copper (in kg per meter cube)
// Calculation of the maximum temperature difference between the coil surface and the winding
pe = pi*(1-Sf^(1/2));// Effective thermal resistivity in (ohm*meter)
q = Sf*Loss_cu*D_cu;// Losses(in Watt per meter cube)
T =q*pe*t^(2)/2;// Maximum temperature difference between the coil surface and the winding (in degree celsius)
disp(T,'Maximum temperature difference between the coil surface and the winding (degree celsius)=');
//in book answer is 51 degree celsius.  The answers vary due to round off error

