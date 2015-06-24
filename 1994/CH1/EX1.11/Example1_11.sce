//Chapter-1,Example1_11,pg 1_42
Vin=3
V1=1
Rin=1*10^6//input resistance of FET
R4=Rin/100//for Vin=100V
R3=(Rin-30*R4)/30//for Vin=30V
R2=(Rin-3*R3-3*R4)/3//for Vin=3V
R1=Rin-R2-R3-R4
printf("Resistances are\n")
printf("R1=%.2f ohm\n",R1)
printf("R2=%.2f ohm\n",R2)
printf("R3=%.2f ohm\n",R3)
printf("R4=%.2f ohm",R4)
