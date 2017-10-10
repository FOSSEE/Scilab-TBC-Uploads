b=300//width, in mm
D=700//overall depth, in mm
Ast=3*.785*20^2//3-20mm dia bars, in sq mm
cover=50//in mm
d=D-cover//effective depth, in mm
sigma_cbc=7//in MPa
sigma_st=190//in MPa
m=13.33//modular ratio
l=6//span, in m
w=25//unit weight of concrete, in kN/m^3
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//to find actual depth of neutral axis using b(x^2)/2=mAst(d-x), which becomes of the form px^2+qx+r=0
p=b/2
q=m*Ast
r=-m*Ast*d
//solving quadratic equation
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//x<Xc, hence beam is under-reinforced
Mr=sigma_st*Ast*(d-x/3)//in N-mm
UDL=(Mr/10^6)*8/l^2//in kN/m
self_weight=w*b*D/10^6//in kN/m
net_weight=UDL-self_weight//in kN/m
mprintf("Moment of resistance=%f kN-m\nSafe uniformly distributed load that the beam can carry=%f kN/m",Mr/10^6,net_weight)
