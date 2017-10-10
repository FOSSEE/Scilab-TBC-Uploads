fck=15//in MPa
fy=415//in MPa
MF=1.4//modification factor
//let a be span to depth ratio
l=1//span, in m
a=MF*7
D=l*1000/a//in mm
D=105//assume, in mm
//to calculate loading
W1=25*(D/10^3)*1.5//self-weight, in kN/m
W2=0.5*1.5//finish, in kN/m
W3=0.75*1.5//live load, in kN/m
W=W1+W2+W3//in kN/m
Wu=1.5*W//in kN/m
lef=l+0.23/2//effective span, in m
Mu=Wu*lef/2//in kN-m
//check for depth
d=sqrt(Mu*10^6/(0.138*fck*1500))//in mm
dia=12//assume 12 mm dia bars
D=d+12/2+15//<105, hence OK
D=100//assume, in mm
d=D-dia/2-15//in mm
//steel
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/1.5/10^3
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=Mu*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
//provide 8 mm dia bars
dia=8//in mm
s1=1500*0.785*dia^2/Ast//>3d=3x79=237 mm
s1=235//in mm
Ads=0.12/100*1000*D//distribution steel, in sq mm
//assume 6 mm dia bars
s2=1000*0.785*6^2/Ads//in mm
s2=235//round-off, in mm
Tbd=1.6//in MPa
Ld=dia*0.87*fy/4/Tbd//in mm
Ld=452//in mm
Tv=Wu*10^3/1500/d//in MPa
Ast=1500*0.785*8^2/235//in sq mm
pt=Ast/1500/d*100//in %
//for M15 and pt=0.26
Tc=0.35//in MPa
//as Tc>Tv, no shear reinforcement required
mprintf("Summary of design\nThickness of slab = %d mm\nCover = 15 mm\nMain steel = 8 mm dia @ %d mm c/c\nDevelopment length = %d mm\nDistribution steel = 6 mm dia @ %d mm c/c",D,s1,Ld,s2)
