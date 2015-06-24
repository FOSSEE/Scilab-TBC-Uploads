clc
disp("Example 2.44")
printf("\n")
disp("Find the ripple factor & DC load current")
printf("Given\n")
Vm=230
f=(314/(2*%pi))
RL=400
C=500*10^-6
//ripple factor
r=1/(4*sqrt(3)*f*RL*C)
//DC load current
Vdc=Vm/(1+(1/(4*f*C*RL)))
Idc=Vdc/RL
printf("ripple factor \n %f\n",r)
printf("DC laod current \n%f ampere\n",Idc)
