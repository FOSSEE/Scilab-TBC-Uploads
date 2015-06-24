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

Xs3=xd+ x1
pe3=E*V/Xs3
d2 = asin(Pi/pe3)
dm=%pi- d2

Pmb=0
Pmc=pe3
dcc=acosd(((Pi*(dm-d0))- (Pmb*cos(d0))+ (Pmc*cos(dm)))/(Pmc-Pmb))
mprintf("Critical Clearing angle = %.2f deg", dcc)
