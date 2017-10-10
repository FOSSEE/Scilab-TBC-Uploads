Bf=1200//width of flange, in mm
Bw=200//breadth of web, in mm
Df=100//thickness of flange, in mm
d=400//effective depth, in mm
sigma_cbc=7//in MPa
sigma_st=190//in MPa
m=13.33//modular ratio
Ast=4*0.785*18^2//four 18 mm dia bars, in sq mm
//assume x < Df; find x using Bf(x^2)/2=mAst(d-x), which becomes of the form px^2+qx+r=0
p=Bf/2
q=m*Ast
r=-m*Ast*d
//solving quadratic equation
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//x < Df; hence our assumption is correct
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//as x < Xc, beam is under-reinforced
sigma_cbc=sigma_st/m*x/(d-x)//in MPa
//taking moments about tensile steel
Mr=Bf*x*sigma_cbc*(d-x/3)/2//in N-mm
mprintf("Moment of resistance of the beam=%f kN-m", Mr/10^6)
