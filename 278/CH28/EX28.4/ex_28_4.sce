//find
clc
//solution
//given
P=22500//W
vr=2//Dg/Dp=2
Np=200//rpm
L=600//mm
fop=60
fog=60
//b=10m
C=80
K=1.4
//L=Dg/2+Dp/2=1.5*Dp
Dp=L/1.5
Dg=2*Dp
v=%pi*Dp*Np/60//m/s
Cv=3/(3+v)
//Tp=Dp/m
//yp=0.175-(0.841/Tp)
//yp=0.175-0.0021*m
Cs=1//assume
Wt=P*Cs/v//N
//Wt=fop*Cv*b*%pi*m*yp//N=137.6m^2-1.65m^3
//using hit and trial,m=0.65
//taking m=8 standard value
m=8
printf("module is,%f mm\n",m)
b=14*m
printf("face width is,%f mm\n",b)
Tp=Dp/m
Tg=Dg/m
printf("numbr of teeth on pinion and gear is,%f \n,%f \n",Tp,Tg)
