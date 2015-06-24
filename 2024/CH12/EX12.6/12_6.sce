clc
//Initialization of variables
p2=600 //psia
p1=44 //psia
te=486.21 //F
tb=273.1 //F
J=778.16
p3=0.25 //psia
//calculations
hc=241.9
hj=834.6
y=1-0.805
v1=0.0172
v2=0.016
ha=28.06
hd=hc+v1*(p2-p1)*144/J
hb=ha+v2*(p1-p3)*144/J
hh=1374
Qa=hh-hd
Qr=(ha-hj)*(1-y)
etat=(Qa+Qr)/Qa
//results
printf("thermal efficiency = %.1f percent",etat*100)
