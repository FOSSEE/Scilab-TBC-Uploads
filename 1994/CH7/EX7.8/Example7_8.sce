//Chapter-7,Example7_8,pg 7-30
Im=20*10^-3
Vm=200*10^-3
Rm=(Vm/Im)
I=200
Rsh=(Im*Rm)/(I-Im)
printf("required shunt resistance\n")
printf("Rsh=%.4f ohm\n",Rsh)
V=500
Rs=(V/Im)-Rm
printf("required multipler resistance\n")
printf("Rs=%.2f ohm",Rs)
