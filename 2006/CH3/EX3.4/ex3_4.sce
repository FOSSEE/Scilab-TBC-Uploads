clc;
D=20; // Diameter of the sphere in cm
m=2.54; // Mass of gas filled in sphere in gram
p=10; // Pressure of gas in bar
T=25; // Temperature of gas in Degree Celcius
R=8.3144*10^3; // Universal gas constant in J/kmol K
V=(3.14*(D*10^-2)^3)/16; // Volume of das in sphere in m^3
M=(m*10^-3*R*(T+273))/(p*10^5*V); // Molecular weight of the gas
disp (M,"Molecular weight of the gas");
disp ("Therefore gas in sphere is Helium (unless mixture of two or more gases)");
