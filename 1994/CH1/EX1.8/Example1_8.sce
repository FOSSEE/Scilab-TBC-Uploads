//Chapter-1,Example1_8,pg 1_39
V1=1
Vin=30
Rin=9*10^6
R4=Rin/100//for Vin=100V
R3=(Rin-50*R4)/50//for Vin=50V
R2=(Rin-30*R3-30*R4)/30//for Vin=30V
R1=Rin-R2-R3-R4
printf("resitance values are\n")
printf("R1=%.2f ohm\n",R1)
printf("R2=%.2f ohm\n",R2)
printf("R3=%.2f ohm\n",R3)
printf("R4=%.2f ohm\n",R4)
