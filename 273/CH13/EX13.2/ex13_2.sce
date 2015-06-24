clc;clear;
//Example 13.2
//calculation of threshold wavelength and stopping potential

//given values

l=2000;//wavelength of light in armstrong 
e=1.6*10^-19;//charge of electron
W=4.2;//work function in eV
c=3*10^8;//velocity of light in m/s
h=6.626*10^-34;//Planck's constant in Js
//calculation
x=12400/(W);//h*c=12400 eV
disp(x,'threshold wavelength(in Armstrong)is');
Vs=(12400/l-W);//
disp(Vs,'stopping potential (in VOLTS) is')