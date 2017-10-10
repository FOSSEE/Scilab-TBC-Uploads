b=300//width, in mm
D=700//overall depth, in mm
Ast=4*.785*25^2//four 25mm dia bars, in sq mm
cover=30//in mm
d=D-cover//effective depth, in mm
M=130*10^6//bending moment, in N-mm
m=18.66//modular ratio
//to find actual depth of neutral axis using b(x^2)/2=mAst(d-x), which becomes of the form px^2+qx+r=0
p=b/2
q=m*Ast
r=-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
z=d-x/3//lever arm, in mm
//assuming under-reinforced section, Mr=Ast*sigma_st(d-x/3) and equating Mr to M
sigma_st=M/(Ast*z)//in MPa
sigma_st=116//round-off, in MPa
sigma_cbc=(sigma_st/m)*x/(d-x)//in MPa
sigma_cbc=5//round-off, in MPa
mprintf("Stress in steel=%d N/mm^2\nStress in concrete=%d N/mm^2",sigma_st,sigma_cbc)
