
clc
//solution
//given
//ref fig 14.3
P=100000//W
N=300//rpm
L=3000//mm
W=1500//N
T=P*60000/(2*%pi*200)//N-mm
M=1500*1000//N-mm
Te=sqrt(M^2 + T^2)//N-mm
//Te=(%pi/16)*t*d^3
d=(Te/11.8)^(1/3)//mm
printf("the dia of shaft is,%f mm",d)
