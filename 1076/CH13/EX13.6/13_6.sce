clear;
clc

f=50
xg=1
xl=.5
E=1.1
V=1
H=5
p=.5

X=xl+xg
d0=asin(p)
Pr=E*V*cos(d0)/X
M=H/(%pi*f)
wn=sqrt(Pr/M)/(2*%pi)

mprintf("Freg of oscillation = %.2f Hz", wn)
