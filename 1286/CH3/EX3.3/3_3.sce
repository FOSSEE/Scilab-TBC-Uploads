clc
//initialisations
m1=0.5//kg
m2=0.09//kg
t1=19//c
t2=15//c
t3=38//c
t4=50//c
s=1000
//CALCULATIONS
A=[4000 -15.5; 23000 11.5]
b=[-360;1080]
c=A\b
R1=c(1,1)
R2=c(2,1)
//results
printf(' water equivalent of mercury= % 1f kg',R1)
printf(' \n specific heat of mercury= % 1f c /kg/c',R2)
