//chapter-10,Example10_13,pg 505

f=10*10^3//supply frequency

R1=10*10^3//reistance of arm-1

C1=0.01*10^-6

C2=0.01*10^-6

R3=20*10^3//resistance of arm-3

w=2*%pi*f//angular supply frequency

R2=(1/(w^2))*(1/(C1*C2*R1))//resistance of arm-2

R4=(R3/((R1/R2)+(C2/C1)))//resistance of arm-4

printf("resistance of arm-2\n")

printf("R4=%.2f ohm\n",R2)

printf("resistance of arm-4\n")

printf("R2=%.2f ohm\n",R4)

