
clc;
clear;
//Example 3.50
rho=960 //[kg/m^3]
k=0.68  //[W/m.K]
mu=282*10^-6    //[kg/(m.s)]
Tw=371  //Tube wall temperature [K]
Ts=373  //Saturation temperature in [K]
dT=Ts-Tw    //[K]
lambda=2256.9   //[kJ/kg]
lambda=lambda*10^3  //[J/kg]
//Fora square array with 100tubes,n=10
Do=0.0125 //[m]
g=9.81  //[m/s^2]
n=10
h=0.725*(((rho^2)*g*lambda*(k^3)/(mu*n*Do*dT))^(1.0/4.0)) //W/(sq m.K)

L=1 //[m]
//n=100
n=100;
A=n*%pi*Do*L    //[m^2/m length]
Q=h*A*dT    //Heat transfer rate in [W/m]
ms_dot=Q/lambda //[kg/s]
ms_dot=ms_dot*3600  //[kg/h]
printf("\n Mass rate of steam condensation is %d kg/h\n",round(ms_dot));

printf("\n NOTE:ERROR in Solution in book.Do is wrongly taken as 0.012 in lines 17 and 22 of the book,Also A is wrongly calculated\n")
