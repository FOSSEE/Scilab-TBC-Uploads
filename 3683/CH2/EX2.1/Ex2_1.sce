b=200//width, in mm
D=400//overall depth, in mm
m=18.66//modular ratio
Ast=4*0.785*22^2//four 22 mm dia bars at bottom, in sq mm
Asc=3*0.785*20^2//three 20 mm dia bars at top, in sq mm
bottom_cover=30//in mm
top_cover=25//in mm
d=D-bottom_cover//effective depth, in mm
//to find x using b(x^2)/2 + (1.5m-1)Asc(x-d')=mAst(d-x), which becomes of the form px^2+qx+r=0
p=b/2
q=(1.5*m-1)*Asc+m*Ast
r=-(1.5*m-1)*Asc*top_cover-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
mprintf("Depth of neutral axis=%f mm",x)
