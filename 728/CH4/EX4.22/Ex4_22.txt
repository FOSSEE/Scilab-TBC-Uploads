//Caption:Calculate the peak value of electric feild occuring in the waveguide 
//Exa:4.22
clc;
clear;
close;
c=3*10^10;//in cm/s
f=30*10^9;//inHz
a=1;//in cm
b=1;
P_max=746;//in watts
wl_o=c/f;
wl_c=2*a;
Z=120*%pi/sqrt(1-(wl_o/wl_c)^2);
E_max=sqrt(P_max*4*Z/(a*b/10000));
disp(E_max/1000,'Peak value of electric field (in kV/m) =');
