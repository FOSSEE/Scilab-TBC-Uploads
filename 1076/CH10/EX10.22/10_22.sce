clear
clc

x1g=.1
x2g=.1
x0g=.05

x1t=.05
x2t=.05
x0t=.05

x1l=.4
x2l=.4
x0l=.8

x1lm=x1l/2
x2lm=x2l/2
x0lm=x0l/2

X1=x1g+x1lm
X2=x2g+x2lm
X0=(x0g+x0lm)*(x0lm+x0t)/(x0g+x0lm+x0lm+x0t)

X=X1+X2+X0
Ia1=round((1/(%i*X))*1000)/1000
Ia2=round((Ia1)*1000)/1000
Ia0=round((Ia1)*1000)/1000
Ia=Ia1+Ia2+Ia0
IFa=abs(Ia)

Va1=1-(Ia1 * X1 *%i)
Va2=0-(Ia2 * X2 *%i)
Va0=0-(Ia0 * X0 *%i)

a=exp(%i * 2 * %pi/3)
A=[1 1 1 
1 a^2 a
1 a a^2
]

va1=[Va0 Va1 Va2]'
Va=A*va1
mprintf("\n(a)")
mprintf("\If= %.3f ang(%.2f)",abs(Ia),270)
mprintf("\nVa= %.3f ang(%.2f)",abs(Va(1)),atand(imag(Va(1))/real(Va(1))))
mprintf("\nVb= %.3f ang(%.2f)",abs(Va(2)),atand(imag(Va(2))/real(Va(2)))+180)
mprintf("\nVc= %.3f ang(%.2f)",abs(Va(3)),atand(imag(Va(3))/real(Va(3)))+180)


X1=x1g+x1lm
X2=x2g+x2lm
X0=(x0g+x0lm)

X=X1+X2+X0
Ia1=round((1/(%i*X))*1000)/1000
Ia2=round((Ia1)*1000)/1000
Ia0=round((Ia1)*1000)/1000
Ia=Ia1+Ia2+Ia0
IFa=abs(Ia)

Va1=1-(Ia1 * X1 *%i)
Va2=0-(Ia2 * X2 *%i)
Va0=0-(Ia0 * X0 *%i)

a=exp(%i * 2 * %pi/3)
A=[1 1 1 
1 a^2 a
1 a a^2
]

va1=[Va0 Va1 Va2]'
Va=A*va1
mprintf("\n(b)")
mprintf("\If= %.3f ang(%.2f)",abs(Ia),270)
mprintf("\nVa= %.3f ang(%.2f)",abs(Va(1)),atand(imag(Va(1))/real(Va(1))))
mprintf("\nVb= %.3f ang(%.2f)",abs(Va(2)),atand(imag(Va(2))/real(Va(2)))+180)
mprintf("\nVc= %.3f ang(%.2f)",abs(Va(3)),atand(imag(Va(3))/real(Va(3)))+180)


