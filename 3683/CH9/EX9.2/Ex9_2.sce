l=4.2//span, in m
b=225//width, in mm
D=300//depth, in mm
sigma_cbc=5//in MPa
sigma_st=230//in MPa
fy=415//in MPa
m=18.66//modular ratio
W1=25*(D/10^3)*(b/10^3)//self-weight, in kN/m
W2=6//load on beam, in kN/m
W=W1+W2//in kN/m
M=W*l^2/8//in kN-m
dia=12//in mm
d=D-dia/2-25//in mm
Xc=0.29*d//in mm
Mr=0.65*b*d^2/10^6//M>Mr, hence doubly reinforced beam
Ast1=round(Mr*10^6/sigma_st/0.9/d)//steel required for singly reinforced beam, in sq mm
M1=M-Mr//balance of moment, in kN-m
d1=25//top cover, in mm
Ast2=round(M1*10^6/sigma_st/(d-d1))//in sq mm
Ast=Ast1+Ast2//in sq mm
n1=Ast/0.785/12^2//no. of 12 mm dia bars on tension side
n1=3//assume
Asc=m*Ast2*(d-Xc)/(1.5*m-1)/(Xc-d1)//in sq mm
n2=Asc/0.785/12^2//no. of 12 mm dia bars on compression side
n2=3//assume
V=W*l/2//in kN
Tv=V*10^3/b/d//in MPa
pt=n1*0.785*12^2/b/d*100//pt=0.56, approximately
//for M15 grade concrete and pt=0.56
Tc=0.302//in MPa
//as Tc>Tv, no shear reinforcement required; provide nominal stirrups
//provide 6 mm dia bars
Asv=2*0.785*6^2//in sq mm
Sv=Asv*fy/0.4/b//in mm
Sv=260//approximately, in mm
Svmax=0.75*d//in mm
Svmax=200//approximately, in mm
Sv=min(Sv,Svmax)//in mm
mprintf("Summary of design\nSize of beam = %d x %d mm\nCover, bottom = 25 mm\nTop = 25 mm\nSteel, bottom = %d-12 mm dia bars\nTop = %d-12 mm dia bars\nStirrups = 6 mm dia @ %d mm c/c throughout",b,D,n1,n2,Sv)
