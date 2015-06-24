//find
clc
//solution
//given
qs=(%pi/2)
Dp=0.08//m
Dg=0.1//m
q=(%pi/180)*14.5
fop=55
fog=55
P=2750//W
Np=1100
//rpm
fes=630
Ep=84000//N/mm^2
Eg=Ep
vr=Dg/Dp
//tan(qp1)=1/vr
qp1=(%pi/180)*38.66
qp2=(%pi/2)-qp1
//Tp=Dp*1000/m
//Tg=Dg*1000/m
//Tep=Tp/cos(qp1)
//Teg=Tg/cos(qp2)
//ypb=0.124-0.686/Tep=0.124-0.00668*m
//ygb=0.124-0.686/Teg
v=%pi*Dp*Np/60//m/s
Cv=6/(6+v)
L=sqrt((Dg/2)^2 +(Dp/2)^2)*1000//mm
b=L/3
T=P*60*1000/(2*%pi*Np)//N-mm
Wt=T/(Dp*1000/2)//N
//Wt=fop*Cv*b*%pi*m*(0.124-0.00668*m)((L-b)/L)
//Wt=175m-9.43m^2
//using hit and trial,we get m=4.5,ssay
m=5
Tp=Dp*1000/m
Tg=Dg*1000/m
printf("module is,%f mm\n",m)
printf("numbr of teeth on pinion and gear  is,%f \n,%f \n",Tp,Tg)
