clear
clc

xd=.2
x1=.4
x2=.4
Pi=1.5
E=1.2
V=1

Xs1=xd  +((x1*x2)/(x1+x2))
pe=E*V/Xs1
d0 = asin(Pi/pe)
dc= (%pi/2)-d0
dc=round(dc*1e3)/1e3

X1=x1;
X2=x2/2
X3=x2/2
Xs2=((X1*X2) + (X2*X3) + (X1*X3))/X3
pe2=E*V/Xs2



Xs3=xd+ x1
pe3=E*V/Xs3
d2 = asin(Pi/pe3)
dm=%pi- d2


if pe2<Pi then
    mprintf("UNSTABLE for sustained fault\n\n")
else
    mprintf("STABLE for sustained fault\n\n")
end


A1=((Pi * dc)+ ( pe2 * cos(dc)))- ((Pi * d0)+ ( pe2 * cos(d0)))
A2=((Pi * dm)+ ( pe3 * cos(dm)))- ((Pi * dc)+ ( pe3 * cos(dc)))

if abs(A1)<abs(A2) then
    mprintf("STABLE system\n\n")
else
    mprintf("UNSTABLE  system\n\n")
end


E=10
x=2
e=1e-3
a=Pi
b=pe3
c=-A1 +(Pi * dc ) + (cos (dc) * pe3)

while (E>e)
    f=(a*x) +  (b * cos(x)) - c
    df=1.5 - (2*sin(x))
    x1=x-(f/df)
    E=abs(x1-x)
    x=x1
end
d2=x1 * 180/%pi
mprintf("\ndelta 2 = %.2f deg",d2)

Pmb=pe2
Pmc=pe3
d0=round(d0*1000)/1000
dcc=acosd(((Pi*(dm-d0))- (Pmb*cos(d0))+ (Pmc*cos(dm)))/(Pmc-Pmb))
mprintf("\nCritical Clearing angle = %.1f deg", dcc)










