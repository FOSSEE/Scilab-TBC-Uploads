//Chapter-8,Example8_1,pg 8_6
Rh=1000
Rm=50
V=3
Ifsd=1*10^-3
R1=Rh-(Ifsd*Rm*Rh)/V
R2=(Ifsd*Rm*Rh)/(V-Ifsd*Rh)
printf("R1=%.2f ohm\n",R1)
printf("R2=%.2f ohm\n",R2)
//due to 5% voltage drop
V=V-0.05*V
R2=(Ifsd*Rm*Rh)/(V-Ifsd*Rh)
printf("change in value R2 \n")
printf("R2=%.2f ohm",R2)
