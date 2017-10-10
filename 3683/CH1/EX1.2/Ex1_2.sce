//let the depth of neutral axis be x
b=150//width, in mm
d=400//effective depth, in mm
Ast=804//area of steel, in sq mm
m=18.66//modular ratio
//b(x^2)/2=mAst(d-x)-->this becomes a quadratic equation of form px^2+qx+r=0
p=b/2
q=m*Ast
r=-m*Ast*d
//solving the quadratic equation
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
mprintf("The depth of neutral axis = %f mm", x)
