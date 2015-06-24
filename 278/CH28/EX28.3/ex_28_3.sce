//find
clc
//solution
//given
P=20000//W
Np=300//rpm
vr=3//Tg/Tp=3
fop=120//N/mm^2
fog=100
Tp=15
//b=14*m
//v=%pi*Dp*Np/60=%pi*m*Tp*Np/60=0.236*m//m/s
Cs=1
//Wt=(P/v)*Cs=84746/m//N
//Cv=3/(3+v)=3/(3+0.236*m)
yp=0.154-(0.912/Tp)
Tg=3*Tp
yg=0.154-(0.912/Tg)
//fop*yp<fog*yg....desing is pinion based
//Wt=fop*Cv*b*%pi*m*yp//N=1476*m^2/(3+0.236m)
//using hit and trial,m=6.4
//taking m=8 standard value
m=8
printf("module is,%f mm\n",m)
b=14*m
printf("face width is,%f mm\n",b)
Dp=m*Tp
Dg=m*Tg
printf("pitch dia of pinion and gear is,%f \n,%f \n",Dp,Dg)