//Exa 10.6
clc;
clear;
close;
//given data
format('v',15);
R=4160;// in J/kg-K
M=2;
D_AB=1.944*10^-8;// in m^2/s
R_H2=R/M;
S=2*0.0532; // Solubility of hydrogen at a pressure of 2 atm in cm^3/cm^3 of pipe
P=2;// in atm
P=P*1.03*10^5;// N/m^2
T=25;// in degree C
T=T+273;// in K
r1=2.5;// in mm
r1=r1*10^-3;// in m
r2=5;// in mm
r2=r2*10^-3;// in m
del_x=r2-r1;// in m
L=1;// in m
//Formula P*V= m*R*T
V=S;
m=P*V/(R*T);// in kg/m^3 of pipe
// So, Concentration of H2 at inner surface of the pipe
C_A1=0.0176;// in kg/m^3
// The resistance of diffusion of H2 away from the outer surface is negligible i.e.
C_A2=0;
Am=2*%pi*L*del_x/log(r2/r1);
// Loss of H2 by diffusion 
M_A= D_AB*(C_A1-C_A2)*Am/del_x;
disp(M_A,"Loss of H2 by diffusion in kg/s");


//Note: In the book , they put wrong value of C_A1 to calculate M_A, so the answer in the book is wrong









