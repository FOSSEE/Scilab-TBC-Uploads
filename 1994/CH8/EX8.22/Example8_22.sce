//Chapter-8,Example8_22,pg 8_67
Z1=300
R2=200
w=2*%pi*10^3
C2=5*10^-6
Z2=R2-%i*(1/(w*C2))
R3=500
C3=0.2*10^-6
Z3=R3-%i*(1/(w*C3))
Z4=Z2*Z3/Z1//balance equation
Zx=Z4
printf("unknown impedance\n")
disp(Zx)
