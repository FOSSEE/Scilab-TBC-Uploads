
clc
//initialisation of variables
clear
t1=300 //K
t3=1900 //K
r=15
g=1.4
p1=1 //bar
cp=1.005
cv=0.718
R=0.287 //kj/kgk
//CALCULATIONS
t2=t1*r^(g-1)
p2=p1*r^(g)
p3=p2
t4=t3*0.143^(g-1)
p4=p3*(0.143)^(g)
qs=cp*(t3-t2)
qr1=cv*(t4-t1)
wo=qs-qr1
ef=wo/qs
v1=R*t1/p1
v2=v1/r
sv=v1-v2
cl=v2/(v1-v2)
mep=wo/sv
printf('mean effective pressure is %2f',mep)
