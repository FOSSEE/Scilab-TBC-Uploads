// Estimating the final steady temperature rise of coil and its time constant
clc;
disp('Example 4.12, Page No. = 4.21')
// Given Data
S = 0.15;// Heat dissipating surface (in meter square)
l = 1;// Length of mean turn in meter
Sf = 0.56;// Space Factor
A = 100*50;// Area of cross-section (in mm square)
Q = 150;// Dissipating loss (in Watts)
emissivity = 34;// Emissivity (in Watt per degree celsius per meter square)
h = 390;// Specific heat of copper (in J per kg per degree celsius)
// Calculation of the final steady temperature rise of coil and its time constant
V = l*A*Sf*10^(-6);// Volume of copper (in meter cube)
G = V*8900;// Since copper weighes 8900 kg per meter cube.  Weight of copper(in kg)
Tm = Q/(S*emissivity);// Final steady temperature rise (in degree celsius)
Th = G*h/(S*emissivity);// Heating time constant (in seconds)
disp(Tm,'Final steady temperature rise (degree celsius))=');
disp(Th,'Heating time constant (seconds)=');
//in book final steady temperature rise (in degree celsius) is equal to 29.4 and heating time constant (in seconds) is equal to 1906.  The answers vary due to round off error

