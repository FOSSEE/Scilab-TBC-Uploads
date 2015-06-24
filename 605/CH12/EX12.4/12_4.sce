
Cvar=3.5*10^-12
C1=150*10^-12
C2=72*10^-12
L=32*10^-9
C=Cvar+C1*C2/(C1+C2)
f=1/(2*%pi*sqrt(L*C))
printf("\nC=%.3e F\nf=%.3e Hz\n",C,f)
Cvar=32*10^-12
C=Cvar+C1*C2/(C1+C2)
f=1/(2*%pi*sqrt(L*C))
printf("\nC=%.3e F\nf=%.3e Hz\n",C,f)
Cvar=3.5*10^-12
C=Cvar+C1*C2/(C1+C2)
f=1/(2*%pi*sqrt(L*C))
printf("\nC=%.3e F\nf=%.3e Hz",C,f)