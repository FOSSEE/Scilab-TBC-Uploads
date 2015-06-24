clc
disp("Example 4.78")
printf("\n")
disp("calculate the minimum & maximum variation in the drain source voltage Vds produced by a change of 0.1V & circuit voltage gain of JFET")
printf("Given\n")
//transconductance
gmmax=5000*10^-6
gmmin=1500*10^-6
//change in gate to source voltage
delVgs=0.1
Rd=1.5*10^3
//the maximum change in drain current
delIdmax=gmmax*delVgs
delVdsmax=delIdmax*Rd
//voltage gain
Av1=delVdsmax/delVgs
//the minimum change in drain current
delIdmin=gmmin*delVgs
delVdsmin=delIdmin*Rd
//voltage gain
Av2=delVdsmin/delVgs
printf("maximum change in drain voltage is %f volt\n",delVdsmax)
printf("maximum voltage gain %f \n",Av1)
printf("minimum change in drain voltage is %f volt\n",delVdsmin)
printf("minimum voltage gain %f \n",Av2)