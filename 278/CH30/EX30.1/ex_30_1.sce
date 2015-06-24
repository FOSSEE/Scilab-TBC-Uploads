//find
clc
//solution
//given
P=35000//W
Np=1200//rpm
Ng=780//rpm
qs=%pi/2
Tp=30
q=(%pi/180)*14.5
//b=L/4
vr=Np/Ng
Tg=vr*Tp
//tan(qp1)=1/vr
qp1=(%pi/180)*33
qp2=(%pi/2)-qp1
Tep=Tp/cos(qp1)
Teg=Tg/cos(qp2)
ypb=0.124-0.686/Tep
ygb=0.124-0.686/Teg
//since theyr are made of sme material,ypb <ypg,therfoere desing is pinion based
T=P*60*1000/(2*%pi*Np)//N-mm
//Wt=2*T/Dp=2T/(m*Tp)=18567/m//N
//v=%pi*Dp*Np/1000=%pi*m*Tp*Np/1000
//v=113.1*m m/min
//fw=140*(280/(280+v)//N/mm^2)
//L=Dp/(2*sin(qpi))=27.54*m//mm
//b=L/4=6.885*m
//Wt=fw*b*%pi*m*ypb*((L-b)/L)
//Wt=140*(280/(280+113.1m))*6.6685m*%pi*m*ypb*((27.54m-6.885m)/27.54m)
//using hit and trial,we get m=6.6,say 8
m=8
printf("module,face width,addendum,dedundum,dia of pinion,slant height are,%f mm\n,%f mm\n,%f mm\n,%f mm\n,%f mm\n %f mm\n",m,6.885*m,m,1.2*m,(m*Tp+2*8*cos(qp1)),27.54*m)