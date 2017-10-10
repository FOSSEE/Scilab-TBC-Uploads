Bf=1500//width of flange, in mm
Bw=300//breadth of web, in mm
Df=100//thickness of flange, in mm
d=700//effective depth, in mm
m=18.66//modular ratio
Ast=8*0.785*25^2//eight 25 mm dia bars, in sq mm
//assume depth of neutral axis is less than or equal to thickness of flange; find x using Bf(x^2)/2=mAst(d-x), which becomes of the form px^2+qx+r=0
p=Bf/2
q=m*Ast
r=-m*Ast*d
//solving quadratic equation
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//x>Df; hence our assumption is incorrect; equating moments of area on compression and tension sides about N.A.
x=(m*Ast*d+Bf*Df^2/2)/(m*Ast+Bf*Df)//in mm
x=263//round-off, in mm
mprintf("Neutral axis depth=%d mm", x)
