clc
//initialisation of variables
mc=0.1//kg
vl1=150//cc
vl2=150//cc
hl1=600
gl1=1200
hl2=400
gl2=900
t1=50//c
t2=40//c
sc=100
r1=2
//CALCULATIIONS
m1=vl1*gl1/(10^6)
rc1=(m1*hl1+mc*sc)*r1
k= -rc1/t1
m2=vl2*gl2/(10^6)
b=(m2*hl2+mc*sc)
j=-k*t2
//results
printf(' rate of cooling= % 1f cal/min',j)
