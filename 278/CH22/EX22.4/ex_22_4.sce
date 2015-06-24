//find...
clc
//solution
//given
P=20000//W
N=300//rpm
w=31.42//rad/s
//(w1-w2)/w=0.01*w
//ref fig 22.8
q=4*%pi
Tmean=(P*60)/(2*%pi*N)//N-m
printf("mean torque acting is,%f N-m\n",Tmean)
Wdpc=Tmean*q//N-m...eq1
//Wn=We-Wc=We-We/2.3=0.565*We...eq2
//from eq1 and eq2
We=14160//N-m
Tmax=We*2/(%pi)//N-m
//BG=BF-FG
BG=Tmax-Tmean//N-m
BF=Tmax
dE=We*(BG/BF)^2//N-m
printf("the ")
//Cs=(w1-w2)/w
Cs=0.02
//let I be moment of inertia
//dE=I*w^2*Cs
I=dE/(w^2*Cs)//kg-m^2
printf("the moment of inertia is,%f kg-m^2",I)