clear
clc

V=33
S=75
Z=V*V/S

sg=15
xg=.15
Xg=xg *S/sg
xt=.08
x=Xg/3

CB=750
XF=S/CB
xi=((x*xt)-(XF*(x+xt)))/(XF-x)
xi=round(xi*10000)/10000
X=xi*Z
mprintf("reactance of reactor X= %.3f ohm",X)
