//find
clc
//solution
//given
Np=600//rpm
vr=4//Tg/Tp=4
fop=84//N/mm^2
fog=105//N/mm^2
Tp=16
m=8//mm
b=90//mm
Dp=m*Tp/1000//m
v=%pi*Dp*Np/60//m/s
Cv=3/(3+v)
yp=0.154-(0.912/Tp)
yg=0.154-(0.912/Tg)
//fop*yp<fog*yg...therefore diseign is pinion based
Wt=fop*Cv*b*%pi*m*yp//N
P=Wt*v
printf("power trans is,%f W\n",P)