Bf=1450//width of flange, in mm
Df=120//thickness of flange, in mm
d=400//effective depth, in mm
m=13.33//modular ratio
Ast=1800//in sq mm
Asc=450//in sq mm
top_cover=30//in mm
M=200*10^6//in N-mm
//assume x>Df; equating moments of area on compression and tension sides about N.A.
x=(m*Ast*d+Bf*Df^2/2+(1.5*m-1)*Asc*top_cover)/(m*Ast+Bf*Df+(1.5*m-1)*Asc)//in mm
//we find that x<Df, hence our assumption that x>Df is wrong
//to find x using Bf(x^2)/2 + (1.5m-1)Asc(x-d')=mAst(d-x), which becomes of the form px^2+qx+r=0
p=Bf/2
q=m*Ast+(1.5*m-1)*Asc
r=-(m*Ast*d+(1.5*m-1)*Asc*top_cover)
//solving quadratic equation
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//as x<Xc, beam is under-reinforced; let stress in concrete at level of steel be equal to 'a' times the stress in concrete at top
a=(x-top_cover)/x
//taking moments about tensile steel
sigma_cbc=M/(Bf*x*(d-x/3)/2+(1.5*m-1)*Asc*a*(d-top_cover))//in MPa
sigma_st=m*sigma_cbc*(d-x)/x//in MPa
sigma_sc=1.5*m*a*sigma_cbc//in MPa
mprintf("Stress in concrete=%f N/mm^2\nStress in tension steel=%f N/mm^2\nStress in compression steel=%f N/mm^2",sigma_cbc,sigma_st,sigma_sc)
//answer in textbook is incorrect
