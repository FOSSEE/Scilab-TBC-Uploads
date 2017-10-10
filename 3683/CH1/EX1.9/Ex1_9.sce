d=120//effective depth of slab, in mm
//consider 1 m strip of slab
b=1000//in mm
s=80//spacing of 12mm dia bars centre-to-centre, in mm
Ast=1000*.785*12^2/s//in sq mm
l=3.2//span, in m
sigma_cbc=7//in MPa
sigma_st=140//in MPa
m=13.33//modular ratio
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//to find actual depth of neutral axis using b(x^2)/2=mAst(d-x), which becomes of the form px^2+qx+r=0
p=b/2
q=m*Ast
r=-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//as x>Xc, the beam is over-reinforced
Mr=b*sigma_cbc*x/2*(d-x/3)/10^6//in kN-m
UDL=Mr*8/l^2//in kN/m
self_weight=25*(d/10^3)*(b/10^3)//in kN/m
W=UDL-self_weight//in kN/m
mprintf("The safe load for slab=%f kN/m",W)
