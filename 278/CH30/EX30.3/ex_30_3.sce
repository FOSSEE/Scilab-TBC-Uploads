//find
clc
//solution
//given
qs=%pi/2
P=9000//W
Tp=21
Tg=60
fop=85
fog=55
Np=1200//rpm
Ng=420//rpm
q=(%pi/180)*14.5
vr=Tg/Tp
//tan(qp1)=1/vr
qp1=(%pi/180)*19.3
qp2=(%pi/2)-qp1
Tep=Tp/cos(qp1)
Teg=Tg/cos(qp2)
ypb=0.124-0.686/Tep
ygb=0.124-0.686/Teg
//since theyr are made of sme material,ygb <ypb,therfoere desing is gear based
T=P*60*1000/(2*%pi*Ng)//N-mm
//Wt=T/(Dg/2)=2*T/(m*Tg)=6820/m//N
//v=%pi*Dg*Ng/60=1320*m//mm/s
//Cv=6/(6+v)
//L=Dg/(2*sin(qp2))=Tg*m/(2*sin(qp2))=32*m
//b=L/3=10.67*m//mm
//Wt=fog*Cv8b*%pi*m*ygb*((L-b)/L)
//Wt=885m^2/(6+1.32*m)
//885*m^3 -9002*m-40920
//using hit and trial method,we get m=4.52,say m=5
m=5//mm
b=10.67*m
printf("module is,%f mm\n",m)
printf("face width is,%f mm\n",b)
Dp=m*Tp
Dg=m*Tg
printf("pitch dia of pinion and gear is,%f mm\n,%f mm\n",Dp,Dg)
v=1.32*m
Wt=6820/m
//table 28.7, 
e=0.055//mm//error
//taking 
K=0.107//14.5 composite teeth
Ep=210*1000//N/mm^2
Eg=84*1000//N/mm^2
C=K*e/(1/Ep + 1/Eg)//N/mm
Wd=Wt+[(21*v*(b*C + Wt))/(21*v + sqrt(b*C + Wt))]
printf("dynamic  load acting is,%f N\n",Wd)
fe=84
Ws=fe*b*%pi*m*ygb
printf("static load acting is,%f N\n",Ws)
printf("since Ws<Wd,therefore desing is not perfect\n")
C1=0.107*0.015/(1/Ep +1/Eg)//N-mm
Wd1=Wt+[(21*v*(b*C1+ Wt))/(21*v + sqrt(b*C1 + Wt))]
printf("new dynamic  load acting is,%f N\n",Wd1)
printf("now by changind dynamic factor (C),we get Ws>Wd,hence desing is,safe\n")
fes=630//N/mm^2
K1=(fes)^2*sin(q)*(1/1.4)*(1/Eg +1/Ep)//N/mm^2
Q=2*Teg/(Teg+Tep)
Ww=Dp*b*Q*K1
printf("wear load acting is,%f N\n",Ww)
printf("since Ww>Wd1.,hence desing is safe")