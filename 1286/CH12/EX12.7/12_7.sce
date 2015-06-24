clc
//initialisation
m=4800//g
lice=80//cal/g
a=3600//sq.cm
t1=100//c
t2=0//c
t=10//cm
//CALCULATIONS
h=(m*lice)/(a*t)
dt=t1-t2
k=(h*t)/(a*dt)
//results
printf(' \n thermal conductivity of stone= % 1f cal/cm s c',k)
