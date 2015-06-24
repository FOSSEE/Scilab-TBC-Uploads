clc
disp("Example 3.19")
printf("\n")
disp("calculate the value of Ie,alpha,beta for a transistor and find Ib for new value of Ic")
printf("Given\n")
//for old transistor
Ic=5.25*10^-3
Ib=100*10^-6
//value of Ie
Ie=Ic+Ib
//value of alpha
alpha=Ic/Ie
//value of beta
beta=Ic/Ib
//for new value of Ib the Ic value is
Ic1=15*10^-3
Ib=Ic1/beta
printf("emitter current \n%f ampere\n",Ie)
printf("alpha \n%f\n",alpha)
printf("beta \n%f\n",beta)
printf("new base current \n%f ampere\n",Ib)
