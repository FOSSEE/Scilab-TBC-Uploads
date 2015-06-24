//Chapter-10,Example10_28,pg10_68
Po=10*735.5//(in W)
Nfl=1410
P=4
f=50
Ns=120*f/P
sfl=(Ns-Nfl)/Ns
Nm=1200
sm=(Ns-Nm)/Ns
T=2*sfl*sm/((sm^2)+(sfl^2))//Tfl/Tm
T1=(1+(sm^2))/(2*sm)//Tm/Tst
T2=T1*T//Tfl/Tst
Tfl=Po*60/(2*%pi*Nfl)
Tst=Tfl/T2
printf("starting torque\n")
printf("Tst=%.2f Nm",Tst)
