clc;clear;
//Example 5.14

//given data
W1=3310*10^-10;//photon wavelength in m
W2=5000*10^-10;//photon wavelength in m
E1=3*10^-19;//electron energy in J
E2=0.972*10^-19;//electron energy in J
c=3*10^8;//speed of light in m/s

//given values
h=(E1-E2)*(W1*W2)/(c*(W2-W1));
disp(h,'the plancks const in Js');
Wo=c*h/E1;
disp(Wo,'The threshold wavelength in m')