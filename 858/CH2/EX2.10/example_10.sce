clc
clear 
printf("example 2.10 page number 74\n\n")

//to find amount of KClO3 precipitated

solubility_70=30.2     //in gm/100gm
w_solute=solubility_70*350/130.2;     //in gm

w_water=350-w_solute;
solubility_30=10.1    //in gm/100gm
precipitate=(solubility_70-solubility_30)*w_water/100

printf("amount precipitated = %f gm",precipitate)
