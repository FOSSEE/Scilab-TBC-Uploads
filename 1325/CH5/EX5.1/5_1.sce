//to find theta at admission, cut-off, release and compression
clc
//given
s=1.125//inch
e=0.25//inch
t=2.25//inch
alpha=35//degrees
//from 5.2, we know theta+alpha=sininverse(s/t)
x=asind(s/t)
y=180-x//sin(x)=sin(180-x)=sin(y)
//at admission
p=x-alpha
//at cutoff
q=y-alpha
//from 5.3, theta+alpha=sininnverse(-e/t)
ang=asind(-e/t)
angle=abs(ang)
a=180+angle//lies in the negative region of sine curve
b=360-angle//lies in hte negative region of sine curve
//at release
r=a-alpha
//at compression
s=b-alpha
printf("Angle theta at admission, cut-off, release and compression are %.2f, %.2f, %.2f and %.2f degrees respectively",p,q,r,s)


