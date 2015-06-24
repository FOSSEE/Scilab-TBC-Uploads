//chapter-10,Example10_11,pg 504

f=1000//supply frequency

C1=0.04*10^-6//capacitance

R1=220//resistance in arm-1

Lu=22*10^-3//inductance

Ru=((2*%pi*f)^2)*C1*R1*Lu//resistance

R3=((R1*Ru)+(Lu/C1))/R2//resistance in arm-3

printf("resistance of inductor\n")

printf("Ru=%.2f ohm\n",Ru)

printf("resistance of arm-3\n")

printf("R3=%.2f ohm\n",R3)