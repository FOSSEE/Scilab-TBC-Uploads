//find
clc
//solution
//given
q=(%pi/180)*20
qs=%pi/2
vr=3
fog=70
fop=100
P=37500//W
Np=750//rpm
//b=L/3
oh=150//mm
//tan(qp1)=1/vr
qp1=(%pi/180)*18.43
qp2=(%pi/2)-qp1
Tp=20//assume
Tg=vr*Tp
Tep=Tp/cos(qp1)
Teg=Tg/cos(qp2)
ypb=0.124-0.686/Tep
ygb=0.124-0.686/Teg
Ng=Np/3
//since theyr are made of sme material,ygb <ypb,therfoere desing is gear based
T=P*60*1000/(2*%pi*Ng)//N-mm
//Wt=T/(Dg/2)=2*T/(m*Tg)=47.7*1000/m//N
//v=%pi*Dg*Ng/60=0.7855*m//m/s
//Cv=3/(3+v)
//L=Dg/(2*sin(qp2))=Tg*m/(2*sin(qp2))=32*m
//b=L/3=10.67*m//mm
//Wt=fog*Cv8b*%pi*m*ygb*((L-b)/L)
//Wt=691*m^2/(3+0.7855*m)
//using hit and trial,we get m=8.8,say 10
m=10
b=10.54*m
printf("module is,%f mm\n",m)
printf("face width is,%f mm\n",b)
Dp=m*Tp
Dg=m*Tg
printf("pitch dia of pinion and gear is,%f mm\n,%f mm\n",Dp,Dg)
//let dp be dia pf pinion shaft
T1=P*60*1000/(2*%pi*Np)
L=31.62*m
Rm=(L-b/2)*Dp/(2*L)//mm
WT=T1/Rm
WRH=WT*tan(q)*sin(qp1)//N
WRV=WT*tan(q)*cos(qp1)//N
printf("axiala nd radial force actin on piston shaft is,%f N\n,%f N\n",WRH,WRV)
M1=WRV*oh-WRH*Rm
printf("moment due to Wrh and Wrv is,%f  N-mm\n",M1)
M2=WT*oh
M3=sqrt(M1^2 +M2^2)
Te=sqrt(T1^2 + M3^2)
t=45
printf("net moment acting is,%f N-mm\n",M3)
dp=(16*Te/(%pi*t))^(1/3)
printf("dia of pinion shaft is,%f mm\n",dp)