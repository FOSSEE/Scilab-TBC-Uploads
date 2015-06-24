clc
clear
//Initalization of variables
p1=0.541 //psia
rel=0.48
pa=14.7 //psia
t1=82 //F
cp=0.24
m1=0.75 //lb
m2=0.25 //lb
hm4=23.15 //Btu/lb
mass=291 //lb
//calculations
p2=rel*p1
sh=0.622*p2/(pa-p2)
hm1=cp*t1 + sh*1097.5
hm2=m1*hm1
hm3=m2*41.67
heat=hm2+hm3-hm4
tonnage=heat*mass/200
//results
printf("Tonnage = %.2f tons",tonnage)
