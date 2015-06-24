clc
disp("Example 2.43")
printf("\n")
disp("Find the ripple factor & output voltage if a capacitor of 160uf is connected in parallel with load")
RL=250
C=160*10^-6
f=50
Vm=49.497
//ripple factor
r=1/(4*sqrt(3)*f*RL*C)
//Dc output voltage
Vdc=Vm/(1+(1/(4*f*C*RL)))
printf("ripple factor \n %f\n",r)
printf("DC output voltage \n%f volt\n",Vdc)
