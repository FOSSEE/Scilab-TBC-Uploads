clc
disp("Example 3.18")
printf("\n")
disp("calculate the value of Ic,Ie for a transistor.Find beta for transistor")
printf("Given\n")
//For old transistor
alpha=0.97
Ib=50*10^-6
//value of collector current
Ic=alpha*Ib/(1-alpha)
//value of emitter current
Ie=Ic/alpha
//value of beta
beta=Ic/Ib
printf("collector current \n%f ampere\n",Ic)
printf("Emitter current \n%f ampere\n",Ie)
printf("beta \n%f\n",beta)
