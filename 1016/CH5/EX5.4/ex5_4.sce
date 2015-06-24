clc;clear;
//Example 5.4

//given values
N=5*10^4;//no. of photons
W=3000*10^-10;//wavelength in A
J=5*10^-3;//senstivity for W in A/W
h=6.625*10^-34;//Plank's constant
c=3*10^8;//speed of light in m/s
e=1.6*10^-19;//the charge on electron in C

//calculation
E=h*c/W;//energy content of each photon
TE=N*E;//total energy
I=J*TE;//current produced
n=I/e;
disp(n,'no. photoelectrons emitted are')