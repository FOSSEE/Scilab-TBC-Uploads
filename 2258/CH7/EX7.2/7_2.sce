clc();
clear;
// To calculate the charge carrier density and electron mobility
RH=3.66*10^-4;   //hall coefficient in m^3/coulomb
sigma=112;    //conductivity in ohm-1 m-1
e=1.6*10^-19;
ne=1/(RH*e);
//sigma = e*ne*(mew_e+mew_h)
//assuming mew_h = 0
mew_e=sigma/(e*ne);
printf("the charge carrier density per m^3 is");
disp(ne);
printf("electron mobility is %f m^2/Vs",mew_e);

//answer given in the book is wrong
