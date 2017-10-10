Bf=1200//width of flange, in mm
Bw=200//breadth of web, in mm
Df=100//thickness of flange, in mm
d=400//effective depth, in mm
m=13.33//modular ratio
Ast=4*0.785*18^2//four 18mm dia bars, in sq mm
//assume x > Df; ; equating moments of area on compression and tension sides about N.A.
x=(m*Ast*d+Bf*Df^2/2)/(m*Ast+Bf*Df)//in mm
//as x < Df; our assumption was incorrect
//x < Df; find x using Bf(x^2)/2=mAst(d-x), which becomes of the form px^2+qx+r=0
p=Bf/2
q=m*Ast
r=-m*Ast*d
//solving quadratic equation
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//x<Df; hence our assumption is correct
mprintf("Neutral axis depth=%f mm", x)
