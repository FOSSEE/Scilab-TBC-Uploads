clc
wavelength=0.49; //μm
a=5.67*10^(-8);

disp("(i) The surface temperature of the sun")
T=2898/wavelength;
disp(T)
disp("K")


disp("(ii) The heat flux at the surface of the sun =")
E_sun=a*T^4;
disp(E_sun)
disp("W/m^2")