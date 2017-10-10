l=2.7+1//span, in m
R=0.15//rise, in m
t=0.27//tread, in m
fck=15//in MPa
fy=415//in MPa
D=200//assume, in mm
W1=D/10^3*25*sqrt(R^2+t^2)/t//slab load on plan, in kN/m
W2=1/2*R*t*25/t//load of step per metre, in kN/m
W3=3//live load, in kN/m
W=W1+W2+W3//in kN/m
Wu=1.5*W//in kN/m
Mu=Wu*l^2/8//in kN-m
d=sqrt(Mu*10^6/0.138/fck/10^3)//in mm
d=115//round-off, in mm
//assume 10 mm dia bars
dia=10//in mm
D=d+dia/2+25//< 200 mm, hence OK
D=l*10^3/24//depth required for deflection, in mm
D=155//round-off, in mm
d=D-dia/2-25//in mm
//steel
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/10^3
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=Mu*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
s1=1000*0.785*dia^2/Ast//spacing of 10 mm dia bars
s1=110//round-off, in mm
Ads=0.12/100*D*10^3//distribution steel, in sq mm
//provide 8 mm dia bars
s2=1000*0.785*8^2/Ads//in mm
s2=270//round-off, in mm
mprintf("Summary of design\nSlab thickness=%d mm\nCover = 25 mm\nMain steel = 10 mm dia bars @ %d mm c/c\nDistribution steel = 8 mm dia @ %d mm c/c",D,s1,s2)
//answer in textbook for spacing of 10 mm dia bars is incorrect
