//Ex2_2 Pg-87
clc
disp("sigma = u*e*n")
u=1200 //mobility
e=1.6*10^(-19) //electron charge
n=10^13 //phosphorous concentration
sigma=u*e*n //conductivity 
printf("\n Conductivity of pure silicon crystal = %.5f ohm^(-1)/cm \n",sigma)
rho=1/sigma //resistivity
printf("\n Resistivity of pure phosphorous = %.0f ohm-cm \n",rho)
