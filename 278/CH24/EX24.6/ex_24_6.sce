//find..
clc
//solution
//given
T=250*1000//N-mm
N=2000//rpm
d1=250//mm
r1=125//mm
v=15.3//m/s
Te=100//N-m
m=1500//kg
Dw=0.7//m
Rw=0.35//m
I=1//kg-m^2
Ta=175//N-m
gr=5//gear ratio
u=0.3
pb=0.13//N/mm^2
n=2
//R=(r1+r2)/2=62.5+0.5r2
//W=p*%pi*[r1^2-r2^2]//N
///T=n*u*W*R
//T=0.245*[976.56*1000+7812.5*r2-62.5*r2^2-0.5*r2^3]
//using hit and trial 
r2=70//mm
we=2*%pi*N/60//rad/s
ww=v/Rw//rad/s
wo=ww*5//rad/s
ae=(Te-T)/I//rad/s^2
Fa=Ta/Rw//N
a=Fa/m//m/s^2
ao=a*gr/Rw//rad/s^2
dt=(wo-we)/(ao-ae)//s
qe=we*dt +0.5*ae*dt^2//rad
qo=wo*dt+0.5*ao*dt^2//rad
q=qo-qe//rad
x=q/(2*%pi)//numbr of revoltuion
printf("numbr of revolution are,%f revolution\n",x)
Q=T*q//heat
printf("heat generated is,%f J\n",Q)