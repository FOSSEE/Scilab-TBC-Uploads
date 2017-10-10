// Estimating the hot spot temperature
clc;
disp('Example 4.7, Page No. = 4.14')
// Given Data
l = 1;// Length of mean turn in meter
Sf = 0.56;// Space Factor
p = 120;// Total loss in the coil in Watt
pi = 8;// Thermal resistivity in ohm*meter
A = 100*50;// Area of cross-section in mm square
t = 50*10^(-3);// Thickness of coil in meter
// Calculation of the temperature of the hot spot
pe = pi*(1-Sf^(1/2));// Effective thermal resistivity in ohm*meter
V = A*l*10^(-6);// Volume of coil(in meter cube)
q = p/V;// Heat dissipated in Watt per meter cube
T0 =q*pe*t*t/8;// Assuming equal inward and outward heat flows
disp(T0,'Temperature of the hot spot (degree celsius)=');
//in book answers is 15 degree celsius.  The answers vary due to round off error

