//Chapter-10,Example10_19,pg10_58
P=12
f=50
R2=0.15
X2=0.25
E2=32
Ns=120*f/P
ns=Ns/60
Tst=3*(E2^2)*R2/((2*%pi*ns)*((R2^2)+(X2^2)))
N=480
s=(Ns-N)/Ns
Tfl=3*s*(E2^2)*R2/((2*%pi*ns)*((R2^2)+((s*X2)^2)))
Tm=3*(E2^2)/(2*%pi*ns*2*X2)
sm=R2/X2
N=Ns*(1-sm)
printf("starting torque\n")
printf("Tst=%.2f Nm\n",Tst)
printf("full load torque\n")
printf("Tfl=%.3f Nm\n",Tfl)
printf("maximum torque\n")
printf("Tm=%.3f Nm\n",Tm)
printf("speed at max torque\n")
printf("N=%.f r.p.m",N)
