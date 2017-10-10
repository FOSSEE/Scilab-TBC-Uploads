l=3//span, in m
b=225//wall thickness, in mm
Dm=19.2//weight of masonry, in kN/cu m
sigma_cbc=5//in MPa
sigma_st=230//in MPa
fy=415//in MPa
//area of triangle of brick masonry
A=sqrt(3)/4*l^2//in sq m
V=A*(b/10^3)//volume of triangle of masonry, in cu m
W=V*Dm//weight of masonry, in kN
M1=W*l/6//in kN-m
D=l*10^3/12//in mm
D=300//approximately, in mm
self_weight=25*(D/10^3)*(b/10^3)//in kN/m
M2=self_weight*l^2/8//in kN-m
M=M1+M2//in kN-m
//check for depth
d=sqrt(M*10^6/0.65/b)//in mm
d=265//approximately, in mm
dia=10//in mm
D=d+dia/2+25//<300 mm, hence OK
D=300//in mm
Ast=M*10^6/sigma_st/0.9/d//in sq mm
n=Ast/0.785/10^2//no. of 10 mm dia bars required
//provide 2-10 mm dia + 1-8 mm dia bars
Ast=2*0.785*10^2+0.785*8^2//in sq mm
pt=Ast/b/d*100//pt=0.35, approximately
W=W+self_weight*l//in kN
V=W/2//in kN
Tv=V*10^3/b/d//in MPa
//for M15 grade concrete and pt=0.35
Tc=0.248//in MPa
//as Tc>Tv, no shear reinforcement required; provide nominal stirrups
//provide 6 mm dia bars
Asv=2*0.785*6^2//in sq mm
Sv=Asv*fy/0.4/b//in mm
Sv=260//approximately, in mm
Svmax=0.75*d//in mm
Svmax=200//approximately, in mm
Sv=min(Sv,Svmax)//in mm
mprintf("Summary of design\nSize of lintel beam=%d x %d mm\ncover = 35 mm\nsteel = 2-10 mm dia bars + 1-8 mm dia bar\nstirrups = 6 mm dia @ %d mm c/c throughout",b,D,Sv)
