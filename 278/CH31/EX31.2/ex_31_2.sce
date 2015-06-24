//find
clc
//solution
//given
P=15000//W
Nw=2000//rpm
Ng=75//rpm
n=3
Dw=65//mm
Tg=90
m=6//mm
q=(%pi/180)*20
u=0.1
T=P*60000/(2*%pi*Nw)//N-mm
Wt=T/(Dw/2)//N
printf("tangential force acting is,%f N\n",Wt)
//let y be lead angle
//tan(y)=m*n/Dw
y=(%pi/180)*15.5 //rad
Wa=Wt/tan(y)
Wr=Wa*tan(q)
printf("axial force and separating force acting is%f N\n,%f N\n",Wa,Wr)
eff=tan(y)*(cos(q)-u*tan(y))/(cos(q)*tan(y)+u)
printf("effi is,%f \n",eff)
