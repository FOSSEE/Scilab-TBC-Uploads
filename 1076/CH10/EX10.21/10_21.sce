clear
clc

V=6.6
S=10
Z=V*V/S
I=S*1e6/(sqrt(3)*V*1e3)

X1=.15
X2=.75*X1
X0=.3*X1

x1=X1/3
x2=X2/3
x0=X0/3

E=1

x1=X1/3
x2=X2/3
x0=X0/3
IFa=abs(3*E/(%i * (x1+x2+x0)))
IFa=round(IFa*1000)/1000
ifa=IFa * I
mprintf("\n(a)fault current when all gen neutrals gounded= %.2f A",ifa)

x1=X1/3
x2=X2/3
x0=X0
IFb=abs(3*E/(%i * (x1+x2+x0)))
IFb=round(IFb*1000)/1000
ifb=IFb * I
mprintf("\n(b)fault current when one gen neutral gounded= %.2f A",ifb)

x1=X1/3
x2=X2/3
x0=X0
R0=.3
r0=round(3*R0/Z*1000)/1000
IFc=abs(3*E/(complex(r0,(x1+x2+x0))))
IFc=round(IFc*1000)/1000
ifc=IFc * I
mprintf("\n(c)fault current when one neutral gounded thru resistance= %.2f A",ifc)
