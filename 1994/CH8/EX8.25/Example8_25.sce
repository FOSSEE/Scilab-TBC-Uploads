//Chapter-8,Example8_25,pg 8_70
R2=842
w=2*%pi*10^3
C2=0.135*10^-6
Z2=R2-%i*(1/(w*C2))
Z3=10
C4=10^-6
Z4=-%i*(1/(w*C4))
Z1=Z2*Z3/Z4
R1=real(Z1)
Xl1=imag(Z1)
L1=Xl1/w
printf("resistance of arm AB\n")
printf("R1=%.3f ohm\n",R1)
printf("inductance of arm AB\n")
printf("L1=%.4f H",L1)
