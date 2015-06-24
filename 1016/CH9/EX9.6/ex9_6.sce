clc;clear;
//Example 9.6

//calculations
W=0.09;//wavelength in Angstrom
D=54;//scattering angle in degree
h=6.625*10^-34;//Plank's constant
c=3*10^8;//speed of light in m/s
e=1.6*10^-19;//the charge on electron in C

//calculations
dW=0.0243*(1-cosd(D));
W1=W+dW;
disp(W1,'wavelegth of scattered X-ray in Angstrom');
E=h*c/(W*10^-10);
disp((E/(e*10^6)),'Energy of incident photon in MeV');
E=h*c/(W1*10^-10);
disp((E/(e*10^6)),'Energy of scattered photon in MeV')