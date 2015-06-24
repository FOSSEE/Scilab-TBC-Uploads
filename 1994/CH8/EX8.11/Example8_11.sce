//Chapter-8,Example8_11,pg 8_56
R1=1.2*10^3
R2=4.7*10^3
C1=1*10^-6
C3=1*10^-6
f=0.5*10^3
w=2*%pi*f
Rx=R2*C1/C3
Cx=R1*C3/R2
D=w*Cx*Rx
printf("unknown capacitance and resistance\n")
printf("Rx=%.f ohm\n",Rx)
printf("Cx=%.8f F\n",Cx)
printf("dissipation factor\n")
printf("D=%.3f",D)
