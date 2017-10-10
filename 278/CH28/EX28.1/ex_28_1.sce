//find
clc
//solution
//given
G=10
//Tg/Tp=10
//Dg/Dp=10
L=660//mm
P=500*1000//W
Np=1800//rpm
q=(%pi/180)*22.5
Wn=175//N/mm
Aw=1
Tp=14
//Tp=(2*Aw)/[G*{sqrt(1+1/G*(1/G +2)*(sin(q))^2)-1}]
//x=G*{sqrt(1+1/G*(1/G +2)*(sin(q))^2)-1}
printf("numbr of teeth on pinion is,%f\n",Tp)
printf("numbr of teeth on pinion is,say 14\n")

Tg=G*Tp
//L=Dg/2+Dp/2=5.5*Dp///Dg/Dp=10
Dp=L/5.5
Dg=10*Dp
m=Dp/Tp
printf("modulde is,%f \n",m)
Tp1=Dp/m
Tg1=G*Tp1
printf("numbr of teeth on pinion and gear is,%f \n,%f \n",Tp1,Tg1)
T=P*60/(2*%pi*Np)//N-m
Wt=T/(Dp/2)
Wn=Wt/cos(q)
b=Wn/175*1000//mm
printf("width is,%f mm\n",b)