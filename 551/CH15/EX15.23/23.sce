clc
A=0.12; //m^2
T=800; //K
a=5.67*10^(-8);

disp("(i) The total rate of energy emission =")
Eb=a*A*T^4;
disp(Eb)
disp("W")


disp("(ii) The intensity of normal radiation =")
Ibn=a*T^4/%pi;
disp(Ibn)
disp("W/m^2.sr")


disp("(iii) The wavelength of maximum monochromatic emissive power =")
wavelength=2898/T;
disp(wavelength)
disp("μm")