
clc
//given
N=210//rpm
w=N*%pi/30
F=50
p1=F*120/(N*2)//N*p=F*120
p2=floor(p1)//no of poles must be a whole number ; P2=P/2
p=2*p2
N1=F*120/p
n=3//no of impulse per second
Ks=n/(6*p)//equation 12.13
printf("\nKs = %.4f\n\nActual speed = %.1f rpm\nNumber of poles = %.f",Ks,N1,p)
