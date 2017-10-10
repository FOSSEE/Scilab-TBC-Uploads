lx=3.5//in m
ly=4//in m
sigma_cbc=5//in MPa
sigma_st=140//in MPa
D=lx*10^3/35//in mm
W1=(D/10^3)*25//self-weight, in kN/m
W2=1.5//live load, in kN/m
W=W1+W2//in kN/m
a=ly/lx
Ax=0.078
Ay=0.0602
Mx=Ax*W*lx^2//in kN-m
My=Ay*W*lx^2//in kN-m
d=sqrt(Mx*10^6/0.87/10^3)//in mm
d=70//assume, in mm
//assume 10 mm dia bars
dia=10//in mm
D=d+dia/2+15//<100 mm assumed value
D=100//in mm
d=D-dia/2-15//in mm
//steel - short span
z=0.87*d//in mm
Ast=Mx*10^6/sigma_st/z//in sq mm
s1=1000*0.785*dia^2/Ast//in mm
s1=200//assume, in mm
//long span
d=d-dia/2-dia/2//in mm
Ast=My*10^6/sigma_st/0.87/d//in sq mm
s2=1000*0.785*dia^2/Ast//>3d = 210 mm
s2=210//assume, in mm
mprintf("Summary of design\nSlab thickness=%d mm\nCover=15 mm\nSteel-\n(i)Short span = 10 mm dia @ %d mm c/c\n(ii)Long span = 10 mm dia @ %d mm c/c\nAlternate bars are bent up at l/7 from support in both directions",D,s1,s2)
