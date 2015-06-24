//Chapter-4,Example 13,Page 96
clc;
close;


q_rev= 12.19    //latent heat 

n= 32    //mols

T= 273-182.9   //temperature in Kelvin

dS= q_rev*n/T

printf('the change of molar entropy is %.2f J/mol',dS)
