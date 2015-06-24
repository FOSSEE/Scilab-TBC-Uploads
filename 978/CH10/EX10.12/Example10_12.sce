//chapter-10,Example10_12,pg 505

C4=0.0033*10^-6//lossy capacitor

R2=12*10^3//arm-2 resistance

R1=10*10^3//arm-1 resistance

C3=((C4*R2)/R1)//standard capacitance

R4=0.1

C1=((R4*C3)/R2)

Fd=2*%pi*f*C4*R4//dissipation factor

printf("capacitance set value\n")

printf("C1=%.16f F\n",C1)

printf("value of standard capacitance\n")

printf("C3=%.14f F\n",C3)

printf("dissipation factor\n")

printf("Fd=%.12f\n",Fd)

