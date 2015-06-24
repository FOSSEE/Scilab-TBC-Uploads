clc
//Example 13.3
//Calculate the fanning friction factor and reynolds number by power law
DP=61.3//Pa/m (pressure gradient)
D=0.152//m
V_avg=0.305//m/s
rho=1000//kg/m^3
f=DP*D/(4*rho*V_avg^2/2)//dimentionless
printf("The fanning friction factor is %f\n",f);
n=0.41//dimentionless
K=0.66//dimentionless
R_pl=8*rho*V_avg^(2-n)*D^n/(K*(2*(3*n+1)/n)^n)//dimentionless
printf("The reynolds number is %f\n",R_pl);
if (R_pl<2000)
    printf("The flow is Laminar");
else
    printf("The flow is turbulent");    
end