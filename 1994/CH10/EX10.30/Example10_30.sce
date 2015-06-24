//Chapter-10,Example10_30,pg10_70
Tsh=162.84
P=6
f=50
Tlost=20.36
fr=1.5
s=fr/f
Ns=120*f/P
N=Ns*(1-s)
Po=Tsh*(2*%pi*N)/60
Fl=Tlost*(2*%pi*N)/60
Pm=Po+Fl
Pc=Pm*s/(1-s)
P2=Pc/s
Sl=830
Pi=P2+Sl
n=Po*100/Pi
printf("motor output\n")
printf("Po=%.4f W\n",Po)
printf("copper loss in rotor\n")
printf("Pc=%.3f W\n",Pc)
printf("motor input\n")
printf("Pi=%.3f W\n",Pi)
printf("efficiency of motor\n")
printf("n=%.2f ",n)
