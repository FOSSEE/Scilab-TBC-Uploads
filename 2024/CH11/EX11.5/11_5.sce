clc
//Initialization of variables
ns=2
n=100
nco=10
nn=88
//calculations
xs=ns/n
conden=(ns-(nn+ns)*xs)/(1-xs)
co2=nco/(nn+nco) *100
//results
printf("Percentage of condensed H20 = %.3f percent",conden)
printf("\n percent of co2 in original mixture = %.3f percent",co2)
