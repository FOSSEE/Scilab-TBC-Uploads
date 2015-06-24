clc
disp("Example 3.20")
printf("\n")
disp("calculate the value of Ic,Ie for a transistor")
printf("Given\n")
alpha=0.99
//base current
Ib=20*10^-6
//value of collector current
Ic=alpha*Ib/(1-alpha)
//value of emitter current
Ie=Ic+Ib
printf("base current \n%f ampere\n",Ib)
printf("collector current \n%f ampere\n",Ic)
printf("Emitter current \n%f ampere\n",Ie)

