//Exam:16.1
clc;
clear;
close;
T_c=4.2;//critical temperature of mercury
k=1.4*10^(-23);//
E_g=3*k*T_c;//energy gap (in Joule)
e=1.6*10^(-19);//charge on the electron 
E=E_g/e;//energy gap (in electron volt)
h=6.6*10^(-34)// in J-s
c=3*10^8;//in m/s
wavelength=h*c/E_g;//wavelength of a photon (in m)
disp(E,'energy gap (in electron volt)=');
disp(wavelength,'wavelength of a photon (in m)=');