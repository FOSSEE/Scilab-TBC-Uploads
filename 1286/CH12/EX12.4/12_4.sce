clc
//initialisation
a=25//sq.mt
aw=5//sq.mt
dt=30//c
t=60*60//sec
l=0.3//m
br=0.12
gl=0.25
l1=0.03//cm
//CALCULATIONS
A=4*a-aw
hb=(br*A*dt*t)/(l*1000)
hw=(gl*aw*dt*t)/(l1*100)
tot=hb+hw
//results
printf(' \n total heat passing per hour= % 1f k.cal',tot)
