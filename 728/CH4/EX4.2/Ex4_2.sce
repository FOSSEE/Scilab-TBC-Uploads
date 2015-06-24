//Caption:Calculate the attenuation, phase constants,phase velocity,relative permittivity,power loss.
//Exa:4.2
clc;
clear;
close;
R=0.05;//in ohms
G=0;
l=50;//in meter
e=2.3;//dielectric constant
c=3*10^8;//in m/s
L=2*(10^-7);//from Exa:4.1
C=1.58*(10^-10);//from Exa:4.1
P_in=480;//in watts
f=3*10^9;//in hertz
Z_o=sqrt(L/C);
a=R/Z_o;//in Np/m
b=2*%pi*f*sqrt(L*C);//in rad/m
V_p=1/sqrt(L*C);
e_r=(c/V_p)^2;
P_loss=P_in*2*l;
disp(a,'Atteneuation (in Np/m) =');
disp(b,'Phase constant (in rad/m) =');
disp(V_p,'Phase velocity (in m/s) =');
disp(e_r,'Relative permittivity =');
disp(P_loss,'Power loss (in watts) =');