// Calculating the temperature difference beetween the centre of the embedded portion of a conductor and the overhang
clc;
disp('Example 4.9, Page No. = 4.16')
// Given Data
L = 0.5;// Length of the machine in meter
pc = 0.0025;// Thermal resistivity of conductor in ohm*meter
p = 0.021*10^(-6);// Electrical resistivity of conductor in ohm*meter
s = 4;// Current density in the conductors (in A per mm square)
// Calculation of the temperature difference beetween the centre of the embedded portion of a conductor and the overhang
T = (s*10^(6))^(2)*(p*pc*L*L)/8;// Effective thermal resistivity in ohm*meter
disp(T,'Temperature difference beetween the centre of the embedded portion of a   conductor and the overhang (degree celsius)=');
//in book answers is 26.3 degree celsius.  The answers vary due to round off error

