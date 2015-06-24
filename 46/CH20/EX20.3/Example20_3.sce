//Example 20.3
clc
L=200;//ft
D=1;//ft
D1=D/12;//inches
D2=D1*2.42;//centimetres
rho=62.4;//lb/ft^3
mu=1.5;//cp
pv=100;//psi
G=1;
q=30;//maximum flow
disp('gpm',30,'q=')
q1=q/(60*7.48);//ft^3/sec
q2=q1*60*60;//ft^3/hr
Re=4*q2*rho/(%pi*mu*D2)//Reynolds number
//For this value of Reynolds number and for smooth pipe fanning friction factor is 0.005
f=0.005;//fanning friction factor
gc=32.2;
p=32*f*L*rho*q1^2/(144*%pi^2*gc*D1^5);//psi
P=pv-p
Cv=q/sqrt(P/G)
//For q=20
q=20;//gpm
q1=q/(60*7.48);//ft^3/sec
p=32*f*L*rho*q1^2/(144*%pi^2*gc*D1^5);//psi
P=pv-p
qmax=Cv*sqrt(P/G);
disp('gpm',qmax,'qmax=')
x=q/qmax//lift
 
