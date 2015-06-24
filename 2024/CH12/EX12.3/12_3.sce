clc
//Initialization of variables
vf=0.01604 //ft^3/lbm
p1=600 //psia
p2=0.2563 //psia
J=778.16
//calculations
W=-vf*(p1-p2)*144/J
disp("From steam tables")
ha=28.06
hb=29.84
hd=1203.2
he=750.5
sa=0.0555
sb=0.0555
sd=1.4454
se=1.4454
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
