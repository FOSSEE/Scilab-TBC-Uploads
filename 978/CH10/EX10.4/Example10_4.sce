//chapter-10,Example10_4,pg 301

C3=0.001*10^-6//capacitor

Fd=6*10^-4//dissipation factor

f=1*10^3//schering bridge frequency

Ru=(Fd/(2*%pi*f*C3))//standard resistor

R1=10*10^3

R2=10*10^3

C1=C3*(1/R2)*Ru

printf("standard resistor\n")

printf("Ru=%.3f ohm\n",Ru)

printf("capacitor\n")

printf("C1=%.16f F",C1)
