clc
disp("Example 3.21")
printf("\n")
disp("calculate the value of Ic,alpha,beta for a transistor and Ic when Ib=150uA")
printf("Given\n")
Ic=12.42*10^-3
Ib=200*10^-6
//value of Ie
Ie=Ic+Ib
//value of alpha
alpha=Ic/Ie
//value of beta
beta=Ic/Ib
//value of Ic when Ib=150uA
Ib1=150*10^-6
Ic=beta*Ib1
printf("Emitter current \n%f ampere\n",Ie)
printf("alpha \n%f\n",alpha)
printf("beta \n%f\n",beta)
printf("collector current \n%f ampere\n",Ic)
