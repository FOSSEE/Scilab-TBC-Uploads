
clc
//solution
//given
//ref fig 14.9
W=200//N
L=300//mm
D=200//mm
R=100//mm
P=1000//W
N=120//rpm
u=0.3
Km=1.5
Kl=2
T=79.6*1000
t=35//N/mm^2
//T=(T1-T2)*R
//T1-T2=796.....eq 1
//log(T1/T2)*2.3=u*%pi
//T1/T2=2.57.....eq 2
//from 1 and 2
T1=1303//N
T2=507//N
Wt=T1+T2+W//N
M=Wt*L//N-mm
Te=sqrt((Km*M)^2 + (Kl*T)^2)//N-mm
//Te=(%pi/16)*t*d^3
d=(Te/6.87)^(1/3)//mm
printf("the dia of shaft is,%f mm",d)

