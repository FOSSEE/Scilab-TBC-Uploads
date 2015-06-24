//find
clc
//solution
//given
a=(%pi/180)*30
P=35000//W
N=1500//rpm
Tg=24
q=(%pi/180)*20
fo=56
//b=3*pn...pn=pc*cos(a)...pc=%pi*m..put in eq2
T=P*60/(2*%pi*N)//N-mm
Te=T/(cos(a))^3//N
yb=0.154-(0.912/Te)
//Wt=T/(Dg/2)=(2T/m/Tg)....Dg=m*Tg
//Wt=18600/m....eq1
//v=%pi*N*Dg/60=%pi*m*Tg*N/60
//v=1.885 m//m/s
//Cv=15/(1+v)=15/(15+1.885m)
//Wt=fo*Cv*b*%pi*m*yp//N...eq2
//Wt=(fo*Cv)*3*%pi*m*cos(a)*%pi*m*yb
//Wt=2780m^2/(15+1.885*m)....eq3
//using hit an trial and eq 1 and 3,we get m=5.5,say 6
m=6
Dg=m*Tg
printf("module and pitch dia of gear is,%f mm\n,%f mm\n",m,Dg)
b=3*%pi*m*cos(a)
printf("face width is,%f mm\n",b)
Wt=18600/m
Wa=Wt*tan(a)//N
printf("axial tooth is,%f N\n",Wa)

