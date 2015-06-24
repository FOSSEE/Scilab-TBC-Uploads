clc
disp("Example 3.16")
printf("\n")
disp("calculate the value of alpha,Ib,beta for a transistor")
printf("Given\n")
//collector current
Ic=2.5*10^-3
//emitter current
Ie=2.55*10^-3
//Value of alpha
alpha=Ic/Ie
//Value of Ib
Ib=Ie-Ic
//value of beta
beta=Ic/Ib
printf("collector current \n%f ampere\n",Ic)
printf("Emitter current \n%f ampere\n",Ie)
printf("alpha \n%f\n",alpha)
printf("base current \n%f ampere\n",Ib)
printf("beta \n%f\n",beta)
