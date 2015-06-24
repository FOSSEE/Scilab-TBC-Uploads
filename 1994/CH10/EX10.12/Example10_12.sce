//Chapter-10,Example10_12,pg10_43
P=4
f=50
Pi=50*10^3
N=1440
Sl=1000
Fl=650
Ns=120*f/P
s=(Ns-N)/Ns
P2=Pi-Sl
Pc=s*P2
Pm=P2-Pc
Po=Pm-Fl
n=Po*100/Pi
printf("full load efficiency\n")
printf("n=%.2f",n)
