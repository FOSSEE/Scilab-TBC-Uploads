//Chapter-8,Example8_10,pg 8_49
//from hay's balance bridge 
w=1000
R1=5.1*10^3
C1=2*10^-6
R2=7.9*10^3
R3=790
Rx=((w^2)*R1*(C1^2)*R2*R3)/(1+((w^2)*(R1^2)*(C1^2)))
Lx=R2*R3*C1/(1+((w^2)*(R1^2)*(C1^2)))
printf("unknown inductance and resistance\n")
printf("Rx=%.f ohm\n",Rx)
printf("Lx=%.5f H",Lx)
