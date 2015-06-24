clc;clear;
//Example 5.5

//given values
W=5*10^-7;//wavelength in m
F=10^-5;//force in N
h=6.625*10^-34;//Plank's constant
m=1.5*10^-3;//mass in kg
c=3*10^8;//speed of light in m/s
S=0.1//specific heat

//calculation
n=F*W/h;
disp(n,'no. of photons');
E=F*c/4200;//in kcal/s
T=E/(m*S);
disp(T,'the rate of temperature rise')