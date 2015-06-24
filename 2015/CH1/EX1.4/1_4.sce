
clc
//initialisation of variables
t1=305 //K
t3=1920 //K
r=7
g=1.4
p1=1 //bar
cv=0.718
R=0.287 //kj/kgk
//CALCULATIONS
t2=t1*r^(g-1)
p2=p1*r^(g)
p3=p2*(t3/t2)
t4=t3*1/r^(g-1)
p4=p3*(1/r)^(g)
qs=cv*(t3-t2)
qr1=cv*(t4-t1)
wo=qs-qr1
ef=wo/qs
v1=R*t1/p1
v2=v1/r
sv=v1-v2
cl=v2/(v1-v2)
mep=wo/sv
printf('mean effective pressure is %2f',mep)
