//find..
clc
//solution
//given
P=30000//W
N=750//rpm
a=(%pi/180)*12.5
pn=0.1//N/mm62
Kl=1.75
t=42//N/mm^2
//D=6*b
T=60*P/(2*%pi*N)*Kl*1000//N-mm
//d=(T*16/(%pi*t))^(1/3)//mm
printf("dia of shaft is,%f mm\n",(T*16/(%pi*t))^(1/3))
printf("dia of shaft is say,50 mm\n")
d=50//mm
//T=2*%pi*u*pn*R^2*b
//b=R/3
//T=0.042*R^3
R=(T/0.042)^(1/3)//mm
printf("mean dia of shaft is,%f mm\n",2*R)
D=2*R
b=D/6
printf("face width is,%f mm\n",b)
//ref fig 24.9
r1=R+ (b/2)*sin(a)//mm
printf("radius of outr clutch is,%f mm\n",r1)
r2=R-(b/2)*sin(a)//mm
printf("radius of inner clutch is,%f mm\n",r2)