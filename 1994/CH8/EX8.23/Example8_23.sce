//Chapter-8,Example8_23,pg 8_67
Z1=10*10^3
Z2=50*10^3
w=2*%pi*2*10^3
C3=100*10^-6
R3=100*10^3
Z3=R3-%i*(1/(w*C3))
Z4=Z2*Z3/Z1
Zx=Z4
Rx=real(Zx)
Xc=-imag(Zx)
Cx=1/(Xc*w)
printf("unknown resistance\n")
printf("Rx=%.f ohm\n",Rx)
printf("unknown capacitance\n")
printf("Cx=%.8f F",Cx)
