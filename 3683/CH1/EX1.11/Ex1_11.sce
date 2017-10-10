b=350//width, in mm
D=650//overall depth, in mm
Ast=4*.785*22^2//four 22mm dia bars, in sq mm
cover=25//in mm
d=D-cover//effective depth, in mm
W=20//UDL, in kN/m
l=7//span, in m
M=W*l^2/8*10^6//bending moment, in N-mm 
m=13.33//modular ratio
//to find actual depth of neutral axis using b(x^2)/2=mAst(d-x), which becomes of the form px^2+qx+r=0
p=b/2
q=m*Ast
r=-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
z=d-x/3//lever arm, in mm
//assuming under-reinforced section, Mr=Ast*sigma_st(d-x/3) and equating Mr to M
sigma_st=M/(Ast*z)//in MPa
sigma_cbc=(sigma_st/m)*x/(d-x)//in MPa
mprintf("Stress in steel=%f N/mm^2\nStress in concrete=%f N/mm^2",sigma_st,sigma_cbc)
