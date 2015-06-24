clc
disp("Example 2.22")
printf("\n")
disp("Calculate Average load current & voltage,Ripple voltage")
printf("Given\n")
RL=2000
//diodes are ideal
Rf=0
C=500*10^-6
f=50
V2=200
Vm=sqrt(2)*V2
//average load current
Idc=(2*Vm)/(%pi*(Rf+RL))
//Average load voltage
Vdc=Idc*RL
//ripple factor
V=0.483
Vac=V*Vdc
//with capacitor connected across RL
V1=1/(4*sqrt(3)*RL*C*f)
//with capacitor filter we have Vdc=Vm
Vdc1=282.84
Vac1=V1*Vdc1
printf("Average load current=\t%f ampere\n",Idc)
printf("Average load voltage=\t%f ampere\n",Vdc)
printf("Ripple voltage=\t%f volt\n",Vac)
printf("Ripple voltage when capacitor connected=\t%f volt\n",Vac1)
