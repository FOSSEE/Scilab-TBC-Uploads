//Chapter-8,Example8_24,pg 8_68
R2=4.8
r2=0.4
w=2*%pi*450
C2=0.5*10^-6
Z2=R2+r2-%i*(1/(w*C2))
Z3=200
Z4=2850
//I1*Z1=I2*Z2........null deflection detector
Z1=Z2*Z3/Z4
R1=real(Z1)
Xc1=-imag(Z1)
C1=1/(w*Xc1)
D=w*R1*C1//dissipation factor
printf("arm-1 resistance\n")
printf("R1=%.4f ohm\n",R1)
printf("arm-1 capacitance\n")
printf("C1=%.6f F\n",C1)
printf("dissipation factor\n")
printf("D=%.6f \n",D)
