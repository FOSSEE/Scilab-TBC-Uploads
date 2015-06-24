//Chapter-8,Example8_21,pg 8_64
w=2*%pi*1000
C1=0.2*10^-6
R2=500
R3=300
C3=0.1*10^-6
Z4=(%i*w*C1*R2)/((1/R3)+(%i*w*C3))//from basic balance equaton
Zx=Z4//unknown impedance
Rx=real(Zx)
Xl=imag(Zx)
Lx=Xl/w//Xl=w*Lx
printf("unknown resistance\n")
printf("Rx=%.2f ohm\n",Rx)
printf("unknown inductance\n")
printf("Lx=%.5f H",Lx)
