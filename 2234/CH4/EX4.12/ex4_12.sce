clc;
eo=8.85*10^-12;  //constant
r=1.2;   //r in m
t=80*10^-6;  //surface sharge density in c/m square
q=t*4*(%pi)*(r^2);  //calculating charge
fi=q/eo;     //calculating flux
disp(fi,"Flux in N m square/c = ");  //displaying result