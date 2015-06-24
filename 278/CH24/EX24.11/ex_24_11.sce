//find..
clc
//solution
//given
D=80//mm
R=40//mm
a=(%pi/180)*15//deg
u=0.3
W=200//N
N=900//rpm
w=94.26//rad/s
m=14//kg
k=0.16//
//T=u*W*R*cosec(a)=9273//N-mm
T=9273//N-mm
printf("torque acting is,%f N-mm\n",T)
I=m*k^2//kg-m^2
alpha=T/(1000*I)//angular acc//rad/s^2
//w=0+alpha*t
t=w/alpha///sec
q=(w+0)/2*t//rad
E=T*q//energy lost in slipping
printf("energy lost is,%f N-mm\n",E)