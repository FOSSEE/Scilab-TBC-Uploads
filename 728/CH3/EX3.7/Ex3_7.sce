//Caption:Calculate terminating impedance.
//Exa: 3.7
clc;
clear;
close;
Z_o=50;
S=3.2;
X_min=0.23;//in terms of wavelength(wl))
//So :
Z_l=Z_o*[[1-%i*S*tan(2*%pi*X_min)]/[S-%i*tan(2*%pi*X_min)]];//in ohms
Z_lmag=[(real(Z_l)^2)+(imag(Z_l)^2)]^0.5;
Z_lang=atan(imag(Z_l)/real(Z_l));
disp("The load impedance");
disp(Z_lmag,"magnitude (in ohms) =");
disp(Z_lang*180/%pi,"angle (in degrees) =");