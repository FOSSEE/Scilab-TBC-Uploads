clc
disp("Example 2.42")
printf("\n")
disp("Find Ripple factor,Dc output voltage,Ripple voltage,DC load current")
printf("Given\n")
Vm=282.84
f=50
C=500*10^-6
RL=2*10^3
//Ripple factor
r=1/(4*sqrt(3)*RL*f*C)
//Dc output voltage
Vdc=Vm/(1+(1/(4*f*C*RL)))
//Ripple voltage on capacitor
Vac=r*Vdc
//DC load current
Idc=Vdc/RL
printf("Ripple factor \n%f\n",r)
printf("dc ouput voltage \n%f volt\n",Vdc)
printf("Ripple voltage on capacitor \n%f volt\n",Vac)
printf("DC load current \n %f ampere\n",Idc)
