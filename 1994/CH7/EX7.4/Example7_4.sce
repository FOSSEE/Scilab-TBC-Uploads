//Chapter-7,Example7_4,pg 7-23
Vsh1=400*10^-3
Rsh=0.01
Ish=Vsh1/Rsh
printf("current through shunt\n")
printf("Ish=%.2f A\n",Ish)
Ish=50
Vsh=Ish*Rsh
printf("voltage through shunt\n")
printf("Ish=%.2f V\n",Vsh)
Rm=750//coil resistance
Im=Vsh1/Rm
Rm1=Vsh/Im//meter resistance
printf("meter resistance\n")
printf("Rm1=%.2f ohm\n",Rm1)
