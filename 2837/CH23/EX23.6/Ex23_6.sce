clc
clear
//Initalization of variables
rel=0.6
p1=0.6982 //psia
pa=14.7 //psia
t1=90 //F
t2=54.94 //F
cp=0.24
p2=0.2136 //psia
vol=4000 //ft
t3=538 //R
R=53.35
//calculations
act1=rel*p1
sh1=0.622*act1/(pa-act1)
hm1=cp*t1+sh1*1100.9
sh2=0.622*p2/(pa-p2)
hm2=cp*t2+sh2*1085.8
con=sh1-sh2
enth=con*23.01
heat=hm1-hm2-enth
mass=144*(pa-p2)*vol/(R*(t3))
tonnage=mass*heat/200
//results
printf("Tonnage = %.1f tons ",tonnage)
