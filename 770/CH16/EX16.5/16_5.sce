clear;
clc;

//Example - 16.5
//Page number - 573
printf("Example - 16.5 and Page number - 573\n\n");

//Given
T = 300;//[K]
R = 8.314;//[J/mol*K] - universal gas constant
A = 7000;//[J/mol]

// log(x_1/(1-x_1)) = (A/(R*T))*(2*x_1-1)

deff('[y]=f(x_1)','y=log(x_1/(1-x_1))-((A/(R*T))*(2*x_1-1))');

x1_alpha=fsolve(0.1,f);

x1_beta=1-x1_alpha;

printf("The equilibrium compositin of the two liquid phase system is given by\n x1_alpha \t = %f \n x1_beta \t = %f",x1_alpha,x1_beta);











