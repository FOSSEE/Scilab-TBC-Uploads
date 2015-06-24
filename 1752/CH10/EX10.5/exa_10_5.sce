//Exa 10.5
clc;
clear;
close;
//given data
format('v',13);
P=3;// in atm
P=P*10^5;// in N/m^2
r1=10;// in mm
r1=r1*10^-3;// in m
r2=20;// in mm
r2=r2*10^-3;// in m
R=4160;// in J/kg-K
T=303;// in K
D=3*10^-8;// in m^2/s
S=3*0.05; // Solubility of hydrogen at a pressure of 3 atm in m^3/m^3 of rubber tubing
del_x=r2-r1;// in m
L=1;// in m
Am=2*%pi*L*del_x/log(r2/r1);
//Formula P*V= m*R*T
V=S;
m=P*V/(R*T);// in kg/m^3 of rubber tubing at the inner surface of the pipe
C_A1=m;
C_A2=0;
//Diffusion flux through the cylinder is given
M=D*(C_A1-C_A2)*Am/del_x;
disp(M,"Diffusion flux through the cylinder in kg/sm")
