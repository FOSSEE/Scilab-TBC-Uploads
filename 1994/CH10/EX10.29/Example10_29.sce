//Chapter-10,Example10_29,pg10_70
P=4
f=50
R2=0.025
X2=0.15
sfl=0.04
Tfl=150
sm=R2/X2
Tm=Tfl*((R2^2)+((sfl*X2)^2))*sm/(sfl*((R2^2)+((sm*X2)^2)))
Ns=120*f/P
N=Ns*(1-sm)
//at start
R21=X2
Rex=R21-R2
printf("maximum torque\n")
printf("Tm=%.2f Nm\n",Tm)
printf("speed N=%.f r.p.m\n",N)
printf("external resistance\n")
printf("Rex=%.3f ohm/ph",Rex)
