//find...
clc
//solution
//given
P=50000//W
N=150//rpm
n=75
ft=4*10^6//N/m^2
rho=7200
Tmean=(P*60)/(2*%pi*N)//N-m
printf("mean torque acig is,%f N-m\n",Tmean)
//ref fig 22.14
q=4*%pi
Wdpc=Tmean*q
Wp=1.4*Wdpc//work done in power stroke....eq1
//from dia
//Wp1=(0.5*%pi)*Tmax...eq2
Tmax=Wp/1.571//N-m
printf("max torque is,%f N-m\n",Tmax)
//BG=BF-FG
BG=Tmax-Tmean//N-m
BF=Tmax
dE=Wp*(BG/BF)^2//N-m
printf("dE is,%f N-m\n",dE)
//let D be mean dia
//let v be peripheral velo
v=sqrt(ft/rho)//m/s
D=(v*60)/(N*%pi)//m
printf("the dia of wheel is,%f m\n",D)
//let t be thickness and b be width of rim
//b=4t
//A=b*t=4*t^2
//N1-N2=0.01*N
Cs=0.01
//dE=E*2*Cs
E=dE/(2*Cs)//N-m
Erim=(15/16)*E//N-m
printf("Erim is,%f N-m\n",Erim)
m=Erim*2/v^2//kg
t=sqrt(m/271468)
printf("the thickness and width si,%f m\n,%f m\n",t,4*t)
