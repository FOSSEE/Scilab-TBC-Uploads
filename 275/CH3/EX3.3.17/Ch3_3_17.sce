clc
disp("Example 3.17")
printf("\n")
disp("calculate the value of beta for transistor. find new collector current when beta of new transistor is 70")
printf("Given\n")
//old transistor
Ic=3*10^-3
Ie=3.03*10^-3
//find Ib
Ib=Ie-Ic
//value of beta
beta=Ic/Ib
//for new transistor beta=70
beta1=70
//the value of Ic
Ic=beta1*Ib
printf("base current \n%f ampere\n",Ib)
printf("beta \n%f\n",beta)
printf("new value of collector current for beta 70 is \n%f ampere\n",Ic)
