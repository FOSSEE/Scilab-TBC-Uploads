//Chapter-9,Example9_28,pg 9_82
Po=20*735.5//(in W)
V=230
N=1150
P=4
A=P
Z=882
Ia=73
Ish=1.6
T=60*Po/(2*%pi*N)
phi=T*A/(0.159*Ia*P*Z)//flux per pole
Il=Ia+Ish
Pin=V*Il
n=Po*100/Pin
printf("electromagnetic torque\n")
printf("T=%.3f Nm\n",T)
printf("flux per pole\n")
printf("phi=%.3f Wb\n",phi)
printf("efficiency of motor\n")
printf("n=%.3f",n)
