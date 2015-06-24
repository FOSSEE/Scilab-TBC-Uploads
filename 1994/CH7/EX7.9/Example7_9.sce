//Chapter-7,Example7_9,pg 7-33
Rm=50
Im=2*10^-3
//for position V4 multipler is R4
V4=10
R4=(V4/Im)-Rm//Rs=(V/Im)-RmV3 m
//for position V3 multipler is R3+R4
V3=50
R3=(V3/Im)-Rm-R4
//for position V2 multiplier is R2+R3+R4
V2=100
R2=(V2/Im)-Rm-R3-R4
//for position V1 multiplier is R1+R2+R3+R4
V1=500
R1=(V1/Im)-Rm-R3-R4-R2
printf("series string of multipliers\n")
printf("R1=%.2f ohm\n",R1)
printf("R2=%.2f ohm\n",R2)
printf("R3=%.2f ohm\n",R3)
printf("R4=%.2f ohm\n",R4)
