//find..
clc
//soltuion
//given
x=1//m
P=95*1000//W
d1=0.3//m
N1=1000//rpm
N2=375//rpm
B=20//deg
A=400*10^-6//m^2
f=2.1//N/mm^2
rho=1100//kg/m^3
u=0.28
t=42//N/mm^2
d2=N1*d1/N2//m
//sin(a)=(r2-r1)/x=0.25
a=(%pi/180)*14.5
q=%pi-2*a//rad
printf("the angle of contact is,%f rad\n",q)
m=A*rho//kg/m
v=(%pi*N1*d1)/60//m/s
Tc=m*v^2//N
T=f*A*10^6//N
printf("max tension is,%f N\n",T)
T1=T-Tc//N
//log(T1/T2)=u*q*cosec(%pi/180*B)=0.9407
T2=T1/8.72//N
Ppb=(T1-T2)*v//W
printf("power tranmited per belt is,%f W\n",Ppb)
//n=P/Ppb//
printf("the number of belts are,%f \n",P/Ppb)
printf("number of belts are say 10\n")
n=10
//let D be dia of shaft
T3=(P*60)/(2*%pi*N2)*1000//N-mm
M=(T1+T2+2*Tc)*200*10//N-mm
Te=sqrt(T3^2 + M^2)
D=[(Te*16)/(%pi*t)]^(1/3)//m
printf("shaft dia is,%f mm\n",D)