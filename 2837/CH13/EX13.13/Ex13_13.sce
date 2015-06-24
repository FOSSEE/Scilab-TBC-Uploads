clc
clear
//Initialization of variables
c=0.74
ref=0.02
co2=0.12
co=0.1/100
o2=0.065
M=12
x=0.79
M=28.97
//calcualtions
n2=1-(co2+co+o2)
mol=n2/x
wt=mol*M
wt2=0.496
pou=wt2*wt
ta=10.27
EA=(pou-ta)/ta *100
//results
printf("Weight of air per pound of fuel = %.2f lb",pou)
printf("\n Excess air percentage = %.1f percent",EA)
