
clc
//given
CP=60//in
l=CP/12
a=41
cg=19
g=32.2//ft/s^2
m1=580//lb
Mr=500//lb
n=5//from example 12.3
x=40*%pi/180
N=120
r=1//ft
k=25
w=N*%pi/30
Rm=m1+(cg/CP)*Mr
fp=w^2*r*(cos(x)+cos(2*x)/n)
Fp=-Rm*fp/g
OM=0.7413//ft -from example 12.3
Tp=Fp*OM//from 12.6
L=a+k^2/a//length for simple equivalent pendulum
L1=L/12
Tc=-Mr*(a/12)*(l-L1)*w^2*sin(2*x)/(g*2*n^2)//from 12.10
Tw=-Mr*a*cos(x)/(n*12)
T=Tp+Tc+Tw
printf("\nTp= %.f lbft\nTc = %.1f lbft\nTw = %.1f lbft\nTotal torque exerted on the crankshaft due to the inertia of the moving parts = Tp+Tc+tw = %.1f lbft",Tp,Tc,Tw,T)
