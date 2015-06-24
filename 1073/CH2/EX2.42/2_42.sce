
clear;
clc;
//Example 2.42
//Given
rho=7800    //[kg per cubic m]
h=100    //W/(sq m.K)  Convective heat transfer coeff
Cp=460    //J/(kg.K)
k=40    //W/(m.K)
L=1    //[m] length ofrod
D=10    //mm    
D=D/1000    //diameter in[m]
R=D/2    //raidus in [m]
//For cylindrical rod:
A=2*%pi*R*L    //Area in [sq m]
V=%pi*R^2*L    //Volume in [cubic m]
L_dash=V/A    //[m]
Nbi=h*L_dash/k    //Biot number
//N_bi<0.10,Hence lumped heat capavity is possible
T=473    //[K]    
T_inf=393    //[K]
T0=593    //[K]
t=-rho*Cp*V*log((T-T_inf)/(T0-T_inf))/(h*A)
printf("Time required to reach temperature %f is %f s",T,t);
