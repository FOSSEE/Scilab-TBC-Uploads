//Chapter-10,Example10_9,pg10_33
P=24
f=50
R2=0.016
X2=0.265
N=247
Ns=120*f/P
sf=(Ns-N)/Ns
sm=R2/X2
Tfm=2*sm*sf/((sm^2)+(sf^2))
Tsm=2*sm/(1+(sm^2))
printf("full load torque to max torque\n")
printf("Tfm=%.4f \n",Tfm)
printf("starting torque to max torque\n")
printf("Tsm=%.4f \n",Tsm)
