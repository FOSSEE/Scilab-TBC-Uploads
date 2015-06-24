//Example 4_19
clc;
clear;
close;
format('v',8);
//given data : 
c=3*10^8;//m/s//Speed of light
h=1.05*10^-34;//Js//Planks Constant
mc=0.067;//mo
mc=mc*0.91*10^-30;//kg
E=0.3;//eV
E=E*1.6*10^-19;//J
//Formula//E=3*h^2*kx^2/2/mc
kx=sqrt(2*mc*E/3/h^2);//m^-1
disp(kx,"Smallest k-vector along x-direction(m^-1)");
