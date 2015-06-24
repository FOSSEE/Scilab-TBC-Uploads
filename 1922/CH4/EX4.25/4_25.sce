clc
clear
//Initialization of variables
tin=298 //K
tout=273 //K
tout2=308 //K
tin2=294 //K
//calculations
eta1=(tin-tout)/tin
eta2=abs((tin2-tout2)/tin2)
//results
printf("Efficiency in case 1 = %.3f",eta1)
printf("\n efficiency in case 2 = %.3f",eta2)

