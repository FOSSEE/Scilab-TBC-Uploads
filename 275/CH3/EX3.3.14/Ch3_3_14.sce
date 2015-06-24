clc
disp("Example 3.14")
printf("\n")
disp("calculate the value of Ic,Ie,beta for a transistor")
printf("Given\n")
alpha=0.98
//base current
Ib=120*10^-6
//Value of Ic
Ic=alpha*Ib/(1-alpha)
//Value of Ie
Ie=Ic+Ib
//value of beta
beta=alpha/(1-alpha)
printf("base current \n%f ampere\n",Ib)
printf("collector current \n%f ampere\n",Ic)
printf("Emitter current \n%f ampere\n",Ie)
printf("beta \n%f\n",beta)
