//find
clc
//solution
//given
d=80//mm
l=120//mm
n=4
W=16.5*1000//N
a=150//mm
fb=15//N/mm^2
ft=35//N/mm^2
E=110*1000//N/mm^2
t=sqrt(3*W*a/(2*fb*l))//mm
printf("thickness of bearing cap,%f mm\n",t)
//let dc be core dia
dc=[(4/3)*(W/n)*(4/%pi)*(1/ft)]^(0.5)//mm
printf("dia of bolts is,%f mm\n",dc)
//let dx be deflction
dx=W*a^3/(4*E*l*t^3)//mm
printf("deflction of cap is,%f mm\n",dx)
