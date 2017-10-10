
//To calculate the rms speed of Nitrogen 

//Example 24.1
 
clear;
 
clc;
 
p=1.0*10^5;//Pressure(in N/m^2) at STP
 
rho=1.25;//Density(in kg/m^3) of Nitrogen
 
Vrms=sqrt(3*p/rho);//rms speed of nitrogen at STP
 
printf("The rms speed of Nitrogen=%.f m/s",Vrms);
