//Chapter-10,Example10_14,pg10_45
Po=25*10^3
f=50
P=4
Ns=120*f/P
N=1410
s=(Ns-N)/Ns
Ml=850
Pm=Po+Ml
Pc=Pm*s/(1-s)
I2r=65
R2=Pc/(3*(I2r^2))
Sl=1.7*Pc
P2=Pc/s
Pin=P2+Sl
n=Po*100/Pin
printf("gross mechanical power\n")
printf("Pm=%.f W\n",Pm)
printf("rotor copper losses\n")
printf("Pc=%.f W\n",Pc)
printf("rotor resistance per phase\n")
printf("R2=%.3f ohm/ph\n",R2)
printf("full load efficiency\n")
printf("n=%.2f",n)
