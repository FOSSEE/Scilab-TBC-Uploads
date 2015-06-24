//find..
clc
//solution
//given
d=250//mm
r=125//mm
q=%pi/4
P=700//N
u=0.35
ub=(4*u*sin(q))/(2*q+sin(2*q))//eqivalent coffint of friction
//Ft=ub*Rn
//taking moment abt O
//700*(250+200)+Ft*50=Rn*200=Ft/ub*200=520*Ft
Ft=700*(250+200)/470//N
Tb=Ft*r
printf("torque applied is,%f N-mm\n",Tb)