b=250//width, in mm
D=550//overall depth, in mm
Ast=1521//area of steel, in sq mm
cover=25//in mm
d=D-cover//effective depth, in mm
sigma_cbc=7//in MPa
sigma_st=140//in MPa
m=13.33//modular ratio
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//to find actual depth of neutral axis using b(x^2)/2=mAst(d-x)--> this will become of the form px^2+qx+r=0
p=b/2
q=m*Ast
r=-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//x>Xc; hence beam is over-reinforced
Mr=b*x*sigma_cbc/2*(d-x/3)//in N-mm
mprintf("Moment of resistance of the beam=%f kN-m",Mr/10^6)
