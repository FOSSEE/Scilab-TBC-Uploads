clear
clc

Pm=2
Pi=1
H=6
G=1
f=50
p=Pi/Pm
M=G*H/(%pi*f)
d0=asin(p)

dcc=acos(((p*(%pi - (2*d0)))- (Pi*cos(d0)))/(Pm-Pi))
mprintf("Critical Clearing angle = %.4f rad\n\n", dcc)

tcc=sqrt(2*M*(dcc-d0)/Pi)
mprintf("Critical Clearing time = %.3f sec = %.2f cycles", tcc , tcc*50)
