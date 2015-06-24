clc
disp("Example 4.77")
printf("\n")
disp("calculate Vds at these gate_source voltages & circuit voltage gain of JFET")
printf("Given\n")
//drain current
Id=9*10^-3
//gate to source voltage
Vgs=(-2)
//when Vgs is reduced to -1V then Id is 12mA
Vgs1=-1
Id1=12*10^-3
//from circuit (fig 4.49)
Rd=1.5*10^3
Vdd=20
//to find Vds
//when Vgs=-2
Vds=Vdd-(Id*Rd)
//when Vgs=-1
Vds1=Vdd-(Id1*Rd)
//change in input voltage Vgs is
delVi=Vgs1-Vgs
//change in output voltage is
delVo=Vds-Vds1
//Voltage gain 
Av=delVo/delVi
printf("The value of Vds at gate-source voltages is \n%f volt\n",Vds)
printf("The circuit voltage gain \n%f\n",Av)
