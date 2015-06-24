clc
clear 
printf("example 6.10 page number 231\n\n")

// to find the equilibrium composition
P_M = 53.32   //kPa
P_W = 12.33   //in kpA
P = 40  //IN K pA
x = (P - P_W)/(P_M-P_W);

printf("liquid phase composition = %f",x)

y = P_M*x/P;
printf("\n\nvapor phase composition = %f",y)
