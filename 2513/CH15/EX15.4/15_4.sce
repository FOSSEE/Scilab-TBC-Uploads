clc
//initialisation of variables
a=42//in
d=45//mgd
d1=0.75//in
s=60//ft
p1=9//in
p2=8.4//in
p3=9//in
c1=13*63.6//sq in
c2=9*55.4//sq in
c3=9.21//sq ft
M=d*1.547//cfs
v=M/c3//fps
g=0.025*32.2//ft/sec^2
//CALCULATIONS
F=v/sqrt(g*(p1/12))//ft
S=s/d1//in
//RESULTS
printf('the port near the end of the diffuser pipe=% f in',F)
