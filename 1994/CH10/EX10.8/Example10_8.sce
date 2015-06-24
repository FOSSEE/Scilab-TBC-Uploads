//Chapter-10,Example10_8,pg10_27
P=4
f=50
K=1/4
R2=0.01
X2=0.1
E1line=400
E1ph=E1line/sqrt(3)
E2=E1ph/4
Ns=120*f/P
//at start
s=1
ns=Ns/60
k=3/(2*%pi*ns)
Tst=k*(E2^2)*R2/((R2^2)+(X2^2))
printf("starting torque\n")
printf("Tst=%.3f N-m\n",Tst)
//slip at max torque
sm=R2/X2
sm=sm*100
printf("slip at which max torque occurs\n")
printf("sm=%.f \n",sm)
//speed at max torque
sm=sm/100
N=Ns*(1-sm)
printf("speed at which max torque occurs\n")
printf("N=%.f r.p.m\n",N)
//max. torque
Tm=k*(E2^2)/(2*X2)
sf=0.04
Tfl=k*sf*(E2^2)*R2/((R2^2)+((sf*X2)^2))
printf("max torque\n")
printf("Tm=%.2f N-m\n",Tm)
printf("full load torque\n")
printf("Tfl=%.2f N-m",Tfl)
