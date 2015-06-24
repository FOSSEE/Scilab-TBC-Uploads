clc
clear 
printf('example 1.17 page number 50\n')

//to find the specific gravity of plasstic

L=1       //length of prototype in m
L1=10*L    //length of model in m
density_prototype=2.65    //gm/cc
density_water=1       //gm/cc

density_model=(L^3*(density_prototype-density_water))/(L1^3)+1;

printf("specific gravity of plastic = %f",density_model)
