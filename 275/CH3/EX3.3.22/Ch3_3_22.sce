clc
disp("Example 3.22")
printf("\n")
disp("calculate the value of Ib,beta for a transistor and Ic, Ie for new value of beta")
printf("Given\n")
Ic=16*10^-3
Ie=16.04*10^-3
//base current
Ib=Ie-Ic
//beta value
beta=Ic/Ib
//for beta=25
beta1=25
Ic1=beta1*Ib
Ie1=Ic1+Ib
printf("base current \n%f ampere\n",Ib)
printf("beta \n%f\n",beta)
printf("emitter current \n%f ampere\n",Ie1)
