clc
//Example 13.4
//Calculate the pressure gradient
D=0.152//m
V_avg=3.04//m/s
rho=1000//kg/m^3
n=0.41//dimentionless
K=0.66//dimentionless
R_pl=8*rho*V_avg^(2-n)*D^n/(K*(2*(3*n+1)/n)^n)//dimentionless
printf("The reynolds number is %f\n",R_pl);
f=0.004//dimentionless (fanning friction factor)
//Let DP denote the pressure gradient
DP=4*f*(rho/D)*(V_avg^2/2)/1000//KPa/m
printf("The pressure gradient is %f KPa/m",DP);