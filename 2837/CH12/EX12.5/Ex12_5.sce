clc
clear
//Initialization of variables
den=61.995 //lb/cu ft
vel=6 //ft/s
t1=100 //F
t2=160 //F
de=2.067 //in
mu=1.238
pr=3.3
//calculations
G=den*vel*3600
tm=(t1+t2)/2
hc=0.023*0.377/(de/12) *(de/12 *G/mu)^0.8 *(pr)^0.4
//results
printf("Inside film coefficient = %d Btu/sq ft hr F",hc)
