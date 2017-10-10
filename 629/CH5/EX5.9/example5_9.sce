clear
clc
//Example 5.9 WATER FLOW THROUGH A VENTURIMETER
//Bernoulli equation, p1+(g*z1)+(rho*V1^2)/2=p2+(g*z2)+(rho*V2^2)/2
rho=1000; //density[kg/m^3]
V1=10; //velocity[m/s]
A21=0.5; //(A21=A2/A1)
V12=A21 //(V12=V1/V2)
del_pz=(rho*V1^2/2)*((1/V12)^2-1)/10^3 //change in piezometric pressure[kPa]
del_pg=del_pz //pressure change in gage[kPa]
printf("\nThe pressure difference recorded by the pressure gage = %.f kPa.\n",del_pg)