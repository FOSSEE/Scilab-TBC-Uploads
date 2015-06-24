//Chapter-10,Example10_25,pg10_65
Po=33.73*10^3
P=4
Vl=400
f=50
Nfl=1440
pf=0.8
Ml=1.3*10^3
Ns=120*f/P
s=(Ns-Nfl)/Ns
fr=s*f
Pm=Po+Ml
Pc=Pm*s/(1-s)
Pcp=Pc/3//copper loss per phase
P2=Pc/s
Sl=1.4*10^3
Pi=P2+Sl
n=Po*100/Pi
Il=Pi/(sqrt(3)*Vl*pf)
printf("slip at full load\n")
printf("s=%.3f \n",s)
printf("rotor frequency\n")
printf("fr=%.f Hz\n",fr)
printf("rotor copper loss per phase\n")
printf("Pcp=%.2f W\n",Pcp)
printf("total copper loss\n")
printf("Pc=%.2f W\n",Pc)
printf("efficiency at full load\n")
printf("n=%.2f \n",n)
printf("line current drawn\n")
printf("Il=%.3f A\n",Il)
