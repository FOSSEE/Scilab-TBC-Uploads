//chapter-10,Example10_10,pg 504

Ru=130//resistance

Lu=31*10^-3//inductance 

R2=10*10^3//resistance in arm-2

C1=0.01*10^-6//capacitance in arm

R3=(Lu/(C1*R2))//resistance in arm-3

R1=((R2*R3)/Ru)//resistance in arm-1

printf("R1=%.2f ohm\n",R1)

printf("R3=%.2f ohm\n",R3)

printf("yes values are unique")