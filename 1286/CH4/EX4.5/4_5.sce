clc
//initialisation of variables
ms=0.0055//kg
t1=100//c
t2=15//c
t3=26.8//c
m1=250/1000//kg
m2=16.2/1000//kg
l=22.572*10^5//kg
//calculations
h=(m1+m2)/(t3-t2)
x=(h-(ms*l))/(t1-t3-l)
p=x*100/ms
//results
printf(' perecntage of water in steam= % 5f ',x)
