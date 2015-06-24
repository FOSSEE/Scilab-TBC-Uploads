clc
clear 
printf("example 7.14 page number 317\n\n")

//to find the initial concentration and shift in equilibrium

Ce_N2 = 3;   //equilibrium conc of N2
Ce_H2 = 9;   //equilibrium conc of H2
Ce_NH3 = 4;  //equilibrium conc oh NH3
C_N2 = Ce_N2 + 0.5*Ce_NH3;
C_H2 = Ce_H2 + 1.5*Ce_NH3;

printf("concentration of N2 = %f mol/l\nconcentration of H2 = %f mol/l",C_N2,C_H2)
printf("\n\nsecond part is theoritical, book shall be referred for solution")

n_H2 = 3;   //stotiometric coefficient
n_N2 = 1;   //stotiometric coefficient
n_NH3= 2;   //stotiometric coefficient
delta_n = n_H2+n_N2-n_NH3;
if delta_n > 0 then printf ("\n\ndelta_n =%f\nsince delta_n is greater than 0,equilibrium will shift to right with increase in volume",delta_n)
end
