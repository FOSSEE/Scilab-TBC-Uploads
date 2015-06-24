clc
clear 
printf("example 3.19 page number 109\n\n")

//to find the heat of reaction and consumption of coke

H_NaCl = 410.9   //in MJ/kmol
H_H2SO4 = 811.3   //in MJ/kmol
H_Na2SO4 = 1384   //in MJ/kmol
H_HCl = 92.3   //in MJ/kmol

Q = H_Na2SO4 + 2*H_HCl -2*H_NaCl-H_H2SO4;
printf("heat of reaction = %f MJ\n\n",Q)

heat_required = 64.5*(500/73);
coke_consumption = heat_required/19
printf("amount of coke oven gas consumed = %f cubic meter",coke_consumption)
