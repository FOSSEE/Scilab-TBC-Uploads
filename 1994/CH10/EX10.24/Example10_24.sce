//Chapter-10,Example10_24,pg10_64
P=4
f=50
R2=0.4
X2=2
E2b=520//between slip rings
E2ph=E2b/sqrt(3)
Ns=120*f/P
N=1425
sf=(Ns-N)/Ns
ns=Ns/60
Tfl=3*sf*(E2ph^2)*R2/((2*%pi*ns)*((R2^2)+((sf*X2)^2)))
Tst=3*(E2ph^2)*R2/((2*%pi*ns)*((R2^2)+((X2)^2)))
T=Tst/Tfl
Tm=3*(E2ph^2)/((2*%pi*ns)*((R2^2)+((X2)*2)))
T1=Tm/Tfl
//at start
sm=1
R21=X2
Rex=R21-R2
printf("full load torque\n")
printf("Tfl=%.2f Nm\n",Tfl)
printf("ratio of Tst to Tfl\n")
printf("T=%.4f \n",T)
printf("ratio of Tm to Tfl\n")
printf("T1=%.4f \n",T1)
printf("external resistance required\n")
printf("Rex=%.2f ohm/ph",Rex)
