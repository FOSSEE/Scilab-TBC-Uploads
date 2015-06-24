clc
//initialization of varaibles
disp("From the psychrometric chart,")
ha=12.9 //B/lb
g1=0.0032 //lb water/ lb dry air
g2=0.0078 //lb water/ lb dry air
hl=13 //B/lb
hd=25.33 //B/lb
p=14.7 //psia
phi=0.6
cp=0.24
t2=70 //F
//calculations
wl=g2-g1
Q=hd-ha-wl*hl
pg=0.1217 //psia
pa=p-pg
G1=0.622*pg*phi/pa
G2=0.00788
wl2=G2-G1
t1=40 //F
hw1=1061.8 + 0.44*t1
hw2=1092.6 //B/lb
Q2=cp*(t2-t1) + G2*hw2 -G1*hw1 - wl2*hl
//results
printf("Method 1")
printf("\n Water to be supplied = %.4f lb/lb of dry air",wl)
printf("\n heat supplied = %.1f B/lb of dry air",Q)
printf("\n Method 2")
printf("\n Water to be supplied = %.5f lb/lb of dry air",wl2)
printf("\n heat supplied = %.1f B/lb of dry air",Q2)
