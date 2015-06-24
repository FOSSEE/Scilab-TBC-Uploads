//Chapter-7,Example7_10,pg 7-35
Rm=50
Im=2*10^-3
V1=500
V2=100
V3=50
V4=10
S=1/Im//senstivity
R4=S*V4-Rm
R3=S*V3-(R4+Rm)
R2=S*V2-(R4+Rm+R3)
R1=S*V1-(R4+Rm+R3+R2)
printf("series string of multipliers\n")
printf("R1=%.2f ohm\n",R1)
printf("R2=%.2f ohm\n",R2)
printf("R3=%.2f ohm\n",R3)
printf("R4=%.2f ohm\n",R4)
