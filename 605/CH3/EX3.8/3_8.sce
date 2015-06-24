Zo=50
C=100*10^(-12)
a=1.15*10^(-3)
//data print
printf("\nZo=50 ohm C=100pF/m a=0.01 dB/m\n")
//formula and result
L=C*Zo^2
R=a*sqrt(L/C)
G=R*C/L
vp=1/sqrt(L*C)
printf("\nresult:-")
printf("\n(a)R=a*sqrt(L/C)=%.3f ohm/m",a*sqrt(L/C))
printf("\n(b)L=C*Zo^2=%.3e H/m",C*Zo^2)
printf("\n(c)G=R*C/L=%.3e S/m",R*C/L)
printf("\n(d)vp=1/sqrt(L*C)=%.1e m/s",1/sqrt(L*C))

