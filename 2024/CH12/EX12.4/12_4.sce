clc
//Initialization of variables
Wisen=-1.78
eta=0.85
t2=60 //F
t1=486.21 //F
//calculations
Wact=Wisen/eta
dsabd= (Wact+Wisen)/(t2+459.7)
disp("From steam tables,")
ha=28.06
hb=30.15
hd=1203.2
he=818.4
sa=0.0555
sb=0.0561
sd=1.4454
se=1.576
Qa=hd-hb
Qr=ha-he
W2=Qr+Qa
Wt=hd-he
Wp=ha-hb
etat=W2/Qa
rw= W2/(Wt)
//results
printf("theoretical efficiency = %.1f percent",etat*100)
printf("\n Work ratio = %.3f",rw)

