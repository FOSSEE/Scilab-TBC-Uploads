fck=15//in MPa
fy=250//in MPa
l=4//span, in m
MF=1.6
a=MF*20
D=l*10^3/a//in mm
W1=(D/10^3)*25//self-weight, in kN/m
W2=1//floor finish, in kN/m
W3=2//live load, in kN/m
W=W1+W2+W3//in kN/m
Wu=1.5*W//in kN/m
lef=4.125//in m
Mu=Wu*lef^2/8//in kN-m
d=sqrt(Mu*10^6/0.149/fck/10^3)//in mm
dia=12//assume 12 mm dia bars
D=d+dia/2+15//<125 mm (assumed value), hence OK
D=125//in mm
d=D-dia/2-15//in mm
//steel
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/10^3
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=Mu*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
s1=1000*0.785*dia^2/Ast//in mm
s1=105//in mm
pt=1000*0.785*dia^2/s1/10^3/d*100//in %
Ads=0.15/100*10^3*D//in sq mm
//provide 8 mm dia bars
s2=1000*0.785*8^2/Ads//in mm
s2=265//in mm
Vu=Wu*lef/2//in kN
Tv=Vu*10^3/10^3/d//in MPa
//for M15 and pt=1
Tc=0.6//in MPa
//for solid slabs
Tc=1.3*Tc//in MPa
//as Tc>Tv, no shear reinforcement required
mprintf("Summary of design:\nSlab thickness= %d mm\nCover = 15 mm\nMain steel = 12 mm dia @ %d mm c/c\nDistribution steel = 8 mm dia @ %d mm c/c",D,s1,s2)
