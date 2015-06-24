

//exapple 4.5 
clc; funcprot(0);
// Initialization of Variable
M=3.995/100;
g=9.81;
R=8.314;
Cd=0.94;
temp=289;
df=9.5/1000;//diameter of float
Af=pi*df^2/4;//area of float
P=115*10^3;
V=0.92/10^6;
rhoc=3778;//density of ceramic
//calculation
rho=P*M/R/temp;
nu=1/rho;
P=V*(rhoc-rho)*g/Af;
disp(P,"pressure drop over the float in (Pa):");
//part2
x=.15/25*(25-7.6);
L=df*100+2*x;
L=L/100;
A1=pi*L^2/4;
A0=A1-Af;
G=Cd*A0*sqrt(2*rho*P/(1-(A0/A1)^2));
printf("mass flow rate in (kg/s) is %.3e",G);
Q=G/rho;
disp(Q,"Volumetric flow rate in (m^3/s):")
