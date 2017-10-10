b=250//width, in mm
D=500//overall depth, in mm
Ast=4*.785*22^2//four 22 mm dia bars, in sq mm
cover=25//in mm
d=D-cover//effective depth, in mm
l=5//effective span, in m
sigma_cbc=5//in MPa
sigma_st=190//in MPa
m=18.66//modular ratio
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//to find actual depth of neutral axis using b(x^2)/2=mAst(d-x), which becomes of the form px^2+qx+r=0
p=b/2
q=m*Ast
r=-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//as x>Xc, beam is over-reinforced
Mr=b*sigma_cbc*x/2*(d-x/3)//in N-mm
self_weight=25*(b/10^3)*(D/10^3)//in kN/m
M=Mr/10^6-self_weight*l^2/8//moment of resistance available for external load, in kN-m
W=4*M/l//in kN
mprintf("The concentrated load the beam can support at centre=%f kN",W)
