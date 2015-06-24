clear
clc

xd=.2
x1=.4
x2=.4
Pi=1.5
E=1.2
V=1


X=xd  +((x1*x2)/(x1+x2))
pe=E*V/X
d0 = asin(Pi/pe)

X2=xd+x1
pe2=E*V/X2
d1 = asin(Pi/pe2)
dm=%pi- d1

A1=((Pi * d1)+ ( pe2 * cos(d1)))- ((Pi * d0)+ ( pe2 * cos(d0)))
A2=((Pi * dm)+ ( pe2 * cos(dm)))- ((Pi * d1)+ ( pe2 * cos(d1)))

if abs(A1)<abs(A2) then
    mprintf("STABLE\n\n")
else
    mprintf("UNSTABLE\n\n")
end

E=10
x=2
e=1e-3
a=Pi
b=pe2
c=-A1 +(Pi * d1 ) + (cos (d1) * pe2)

while (E>e)
    f=(a*x) +  (b * cos(x)) - c
    df=1.5 - (2*sin(x))
    x1=x-(f/df)
    E=abs(x1-x)
    x=x1
end
d2=x1 * 180/%pi
mprintf("\ndelta 2 = %.2f deg",d2)
