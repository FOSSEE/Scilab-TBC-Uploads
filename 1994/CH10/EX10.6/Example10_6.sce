//Chapter-10,Example10_6,pg10_21
P=4
f=50
R2=0.2
X2=1
E2line=120
E2ph=E2line/sqrt(3)
Ns=120*f/P
//at start
pf=R2/sqrt((R2^2)+(X2^2))//power factor
I2=E2ph/sqrt((R2^2)+(X2^2))
printf(" at start\n")
printf("pf=%.3f lagging\n",pf)
printf("I2=%.2f A\n",I2)
//on full load
N=1440
s=(Ns-N)/Ns
pf=R2/sqrt((R2^2)+((s*X2)^2))
I2=E2ph*s/sqrt((R2^2)+((s*X2)^2))
printf(" on full load\n")
printf("pf=%.3f lagging\n",pf)
printf("I2=%.2f A",I2)
