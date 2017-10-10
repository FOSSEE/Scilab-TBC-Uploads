fck=15//in MPa
fy=415//in MPa
l=4.5//span, in m
MF=1.4
a=MF*20
D=l*10^3/a//in mm
D=160//in mm
W1=(D/10^3)*25//self-weight, in kN/m
W2=1//floor finish, in kN/m
W3=1//partitions, in kN/m
W4=4//live load, in kN/m
W=W1+W2+W3+W4//in kN/m
Wu=1.5*W//in kN/m
lef=l+0.16//in m
Mu=Wu*lef^2/8//in kN-m
d=sqrt(Mu*10^6/0.138/fck/10^3)//in mm
dia=12//assume 12 mm dia bars
D=d+dia/2+15//=160 mm(assumed value), approximately
D=160//in mm
d=140//in mm
//steel
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/10^3
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=Mu*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
s1=1000*0.785*dia^2/Ast//in mm
s1=112//in mm
pt=Ast/10^3/d*100//in %
Ads=0.12/100*10^3*D//in sq mm
//provide 8 mm dia bars
s2=1000*0.785*8^2/Ads//in mm
s2=260//in mm
Vu=Wu*lef/2//in kN
Tv=Vu*10^3/10^3/d//in MPa
//for M15 and pt=0.718
Tc=0.53//in MPa
//for solid slabs
Tc=1.25*Tc//in MPa
//as Tc>Tv, no shear reinforcement required
mprintf("Summary of design:\nSlab thickness= %d mm\nCover = 15 mm\nMain steel = 12 mm dia @ %d mm c/c\nDistribution steel = 8 mm dia @ %d mm c/c",D,s1,s2)
