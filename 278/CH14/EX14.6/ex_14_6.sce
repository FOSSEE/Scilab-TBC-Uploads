//determine dia of the shaft
clc
//solution
//given
P=7.5*10^3//W
N=300//rpm
D=150//mm
L=200//mm
t=45//N/mm^2
a=(%pi/180)*20//rad
//reff fig 14.2
T=P*60000/(2*%pi*200)//N-mm
Ft=2*T/D//N
W=Ft/(cos(a))//N
M=W*L/4//N-mm
//let d be dia
Te=sqrt(T^2 + M^2)//N-mm
//Te=(%pi/16)*t*d^3
d=(Te/8.84)^(1/3)//mm
printf("the dia of shaft is,%f mm",d)
