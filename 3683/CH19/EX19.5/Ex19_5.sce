lx=3.5//in m
ly=4//in m
fck=15//in MPa
fy=250//in MPa
D=lx*10^3/35//in mm
W1=(D/10^3)*25//self-weight, in kN/m
W2=1.5//live load, in kN/m
W=W1+W2//in kN/m
Wu=1.5*W//in kN/m
a=ly/lx
Ax=0.078
Ay=0.0602
Mx=Ax*Wu*lx^2//in kN-m
My=Ay*Wu*lx^2//in kN-m
d=sqrt(Mx*10^6/0.149/fck/10^3)//in mm
d=51//round-off, in mm
//assume 10 mm dia bars
dia=10//in mm
D=d+dia/2+15//<100 mm assumed value
D=100//in mm
d=D-dia/2-15//in mm
//steel - short span
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/10^3
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=Mx*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
s1=1000*0.785*dia^2/Ast//in mm
s1=220//round-off, in mm
//long span
d=d-dia/2-dia/2//in mm
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/10^3
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=My*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
s2=1000*0.785*dia^2/Ast//in mm
s2=250//round-off, in mm
mprintf("Summary of design\nSlab thickness=%d mm\nCover=15 mm\nSteel-\n(i)Short span = 10 mm dia @ %d mm c/c\n(ii)Long span = 10 mm dia @ %d mm c/c",D,s1,s2)
