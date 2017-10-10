Bf=1500//width of flange, in mm
Df=150//thickness of flange, in mm
d=600//effective depth, in mm
sigma_cbc=7//in MPa
sigma_st=230//in MPa
m=13.33//modular ratio
Ast=1964//in sq mm
Asc=1140//in sq mm
top_cover=50//in mm
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//assume x>Df; equating moments of area on compression and tension sides about N.A.
x=(m*Ast*d+Bf*Df^2/2+(1.5*m-1)*Asc*top_cover)/(m*Ast+Bf*Df+(1.5*m-1)*Asc)// in mm
//we find that x<Df, hence our assumption that x>Df is wrong
//to find x using Bf(x^2)/2 + (1.5m-1)Asc(x-d')=mAst(d-x), which becomes of the form px^2+qx+r=0
p=Bf/2
q=m*Ast+(1.5*m-1)*Asc
r=-(m*Ast*d+(1.5*m-1)*Asc*top_cover)
//solving quadratic equation
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//as x<Xc, beam is under-reinforced
sigma_cbc=sigma_st/m*x/(d-x)//in MPa
sigma_cbc_dash=sigma_cbc*(x-top_cover)/x//stress in concrete at level of compression steel, in MPa
//taking moments about tensile steel
Mr=Bf*x*sigma_cbc*(d-x/3)/2+(1.5*m-1)*Asc*sigma_cbc_dash*(d-top_cover)//in N-mm
mprintf("Moment of resistance of the beam=%f kN-m", Mr/10^6)
//answer given in textbook is incorrect
