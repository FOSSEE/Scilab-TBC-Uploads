//find
clc
//solution
//given
L=500//mm
Nm=900//rpm
Nc=200//rpm
T=5000//N-m
Tmax=1.25*T
vr=Nm/Nc
//Dp+Dg=(L*2)...eq1
//Dg=vr*Dp....eq2
//usieng eq1 and eq2
Dp=182//mm
Dg=4.5*Dp/1000//m
v=%pi*Dg*Nc/60//m/s
Cv=3/(3+v)
fog=140
//yg=.175-(0.841/Tg)=0.175-0.841*m/Dg...Tg=Dg/m
//yg=0.175-0.001m
Wt=2*Tmax/Dg//N
//Wt=fog*Cv*b*%pi*m*yg=200*m^2-1.144m^3....
//using hit anf trial m=8.95,say 10
m=10//mm
b=10*m
printf("module is,%f mm\n",m)
printf("face width is,%f mm\n",b)
Tp=Dp/m
Tg=Dg/m
Dp=m*Tp
Dg=m*Tg
printf("pitch dia of pinion and gear si,%f mm\n,%f mm\n",Dp,Dg*1000)
