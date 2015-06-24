clc
disp("Example 3.15")
printf("\n")
disp("Find the value of alpha & beta of transistor and Ib for desired Ic")
printf("Given\n")
Ic=1.2*10^-3
Ib=20*10^-6
//the value of beta
beta=Ic/Ib
//the value of alpha
alpha=beta/(1+beta)
//the value of Ib for desired value of Ic=5mA
Ic1=5*10^-3
Ib1=Ic1/beta
printf("beta \n%f\n",beta)
printf("alpha \n%f\n",alpha)
printf("base current when collector current is 5mA is \n%f ampere\n",Ib1)
