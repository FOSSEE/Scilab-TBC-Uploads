//find
clc
//solution
//given
P=15000//W
q=(%pi/180)*20
a=(%pi/180)*45
Np=10000//rpm
Dp=0.08//m
Dg=0.32//m
fop=100
fog=100
fes=618
//let m is module
T=P*60/(2*%pi*Np)//N-m
Wt=T/(Dp/2)//N
//Tp=Dp/m
//Te=Tp/(cos(a))^3=226.4/m
//ypb=0.175-(0.841/Te)=0.175-0.0037m
v=%pi*Dp*Np/60//m/s
Cv=0.75/(0.75+sqrt(v))
//b=12.5m...assume
//Wt=fop*Cv*b*%pi*m*ypb=72m^2-1.5m^3
//using hit and trial m=2.3..say 2.5
m=2.5
b=12.5*m
printf("module and face width is,%f mm\n,%f mm\n",m,b)
vr=Dg/Dp
Q=2*vr/(vr+1)
//x=tan(qn)
x=tan(q)*tan(a)
qn=(%pi/180)*14.4
Ep=200*1000
Eg=200*1000
K=(fes)^2*sin(qn)*(1/1.4)*(1/Ep +1/Eg)//N/mm^2
Ww=Dp*b*Q*K*1000/(cos(a))^2//N
printf("load stress factor is,%f N/mm^2\n",K)
printf("wear load acting is,%f N\n",Ww)
printf("since wear load acting is more then tangentia tooth load ,hence design is safe")