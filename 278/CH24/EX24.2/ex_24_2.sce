//find..
clc
//solution
//given
P=110*1000//W
N=1250//rpm
d1=300//mm
r1=150//mm
u=0.4
n=2
p=0.14//N/mm^2
//let d2 b einner dia
//r2 be inner radius
T=P*60/(2*%pi*N)*1000//N-mm
//W=p*(%pi)*(r1^2-r2^2)=0.534*(150^2-r2^2)
//R=(2/3)*[(r1^3-r2^3)/(r1^2-r2^2)]
//T=n*u*W*R
//T=0.285*[150^3-r2^3]
r2=(150^3-2.95*10^6)^(1/3)//mm
d2=2*r2//mm
printf("inner dia is,%f mm\n",d2)
W=0.534*[r1^2-r2^2]//N
printf("axial thrust is,%f N\n",W)
R=(r1+r2)/2//mm
Tmax=n*u*W*R//N-mm
printf("max torque is,%f N-mm\n",Tmax)
pmax=W/(2*%pi*r2*(r1-r2))//N/mm^2
printf("max pressure acitngis,%f N/mm^2\n",pmax)