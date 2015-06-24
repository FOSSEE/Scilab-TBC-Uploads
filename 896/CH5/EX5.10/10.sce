clc
//Example 5.10
//Calculate the pressure difference in a pipe
v1=1//m/s
d1=0.4//m
A1=(%pi)*d1^2/4//m^2
d2=0.2//m
A2=(%pi)*d2^2/4//m^2
v2=A1*v1/A2//m/s
Cv=0.62//dimentionless
rho_water=998.2//kg/m^3
dP=(rho_water*v2^2/2/Cv^2)*(1-(A2/A1)^2)/1000//KPa
printf("The pressure difference in the pipe is %f KPa",dP);