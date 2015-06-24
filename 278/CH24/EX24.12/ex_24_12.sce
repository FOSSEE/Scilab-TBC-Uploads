//find..
clc
//solution
//given
P=45*1000//W
N=1000//rpm
a=(%pi/180)*12.5
D=500//mm
R=250//mm
u=0.2
pn=0.1//N/mm^2
T=P*60/(2*%pi*N)*1000//N-mm
//let b be face width
//T=2*%pi*u*R^2*b
b=T/(2*%pi*pn*u*R^2)//mm
printf("face width is,%f mm\n",b)
Wn=pn*2*%pi*R*b//N
We=Wn*(sin(a)+0.25*u*cos(a))
printf("axial force applied is,%f N\n",We)
