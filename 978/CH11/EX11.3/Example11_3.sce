//chapter-11,Example11_3,pg 505

R1=0//resistance

C=0.1*10^-6//capacitance

f=1*10^3//frequency

L=(1/((2*%pi*f)^2))*(1/C)//inductance

printf("inductance of circuit\n")

printf("L=%.6f H  ",L)