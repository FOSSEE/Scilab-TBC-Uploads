//find..
clc
//soltuion
//given
P=600*1000//W
d=4//m
N=90//rpm
q=2.8//rad
B=22.5//deg
u=0.28
m=1.5//kg/m
T=2400//N
v=(%pi*N*d)/60//m/s
Tc=m*v^2//N
printf("the centrifugl tension is,%f N\n",Tc)
T1=T-Tc//N
//log(T1/T2)=u*q*cosec(%pi/180*B)=0.8907
T2=T1/7.78//N
Ppb=(T1-T2)*v//W
printf("power tranmited per belt is,%f W\n",Ppb)
//n=P/Ppb//
printf("the number of belts are,%f \n",P/Ppb)
printf("number of belts are say 20\n")