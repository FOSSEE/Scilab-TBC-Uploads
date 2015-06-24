//find..
clc
//solution
//given
Tb=360*1000//N-mm
d=300//mm
r=0.15//m
u=0.3
//ref fig 25.8  and 25.9
Ft=Tb/0.15/1000//N
Rn=Ft/u
//P*(600+200)+Ft*50=Rn*200
P=(Rn*200-Ft*50)/800
printf("force req in fig25.8 is,%f N\n",P)
//P1*800=Rn*200+Ft*50
P1=(Rn*200+Ft*50)/800
printf("force req in fig 25.9 is,%f N\n",P1)
//P*(600+200)+Ft*x-Rn*200=0
//if P=0
x=Rn*200/Ft//mm
printf("location of fulcrum is,%f mm\n",x)