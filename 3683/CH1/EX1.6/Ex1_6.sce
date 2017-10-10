b=200//width, in mm
d=450//effective depth, in mm
Ast=3*.785*16^2//three 16 dia bars, in sq mm
sigma_cbc=5//in MPa
sigma_st=140//in MPa
m=18.66//modular ratio
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//to find actual depth of neutral axis using b(x^2)/2=mAst(d-x), which becomes of form px^2+qx+r=0
p=b/2
q=m*Ast
r=-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//as x<Xc, beam is under-reinforced
Mr=Ast*sigma_st*(d-x/3)//in N-mm
mprintf("Moment of resistance of the beam = %f kN-m", Mr/10^6)
