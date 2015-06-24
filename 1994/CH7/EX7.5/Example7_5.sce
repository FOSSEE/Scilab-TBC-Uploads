//Chapter-7,Example7_5,pg 7-25
I1=10*10^-3
Im=2*10^-3
Rm=75
R1=(Im*Rm)/(I1-Im)
I2=50*10^-3
R2=(Im*Rm)/(I2-Im)
I3=100*10^-3
R3=(Im*Rm)/(I3-Im)
printf("designed multi-range ammeter\n")
printf("full scale deflection Im=%.5f A\n",Im)
printf("meter resistance Rm=%.2f ohm\n",Rm)
printf("R1=%.2f ohm\n",R1)
printf("R2=%.2f ohm\n",R2)
printf("R3=%.2f ohm\n",R3)
