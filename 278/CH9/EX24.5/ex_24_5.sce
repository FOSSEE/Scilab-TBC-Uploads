
clc
//solution
//given
P=15000//W
N=900//rpm
n=4
R=0.15//m
u=0.25
//let m be the mass
w=2*%pi*N/60//rad/s
w1=(3/4)*w//rad/s
r=0.12//m
//Pc=m*w^2*r=1066*m//N
//Ps=m*w1^2*r=600m//N
T=P*60/(2*%pi*N)//N-m
//T=u*(Pc-Ps)*R*n=70m
m=T/70//kg
printf("mass of shoes is,%f kg\n",m)
a=%pi/3
l=R*a*1000//mm
//A=l*n=157*b//mm^2
//F=A*p=15.7*b//N
//15.7*b=Pc-Ps=466m
b=466*m/(15.7)//mm
printf("face width is,%f mm\n",b)