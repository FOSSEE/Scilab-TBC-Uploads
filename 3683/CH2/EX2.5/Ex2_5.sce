b=250//width, in mm
d=450//effective depth, in mm
Ast=4*0.785*22^2//four 22 mm dia bars on tension side, in sq mm
Asc=Ast
top_cover=30//in mm
sigma_cbc=7//in MPa
sigma_st=140//in MPa
sigma_sc=130//in MPa
m=13.33//modular ratio
l=5.7//effective span, in m
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//to find x using b(x^2)/2 + (1.5m-1)Asc(x-d')=mAst(d-x), which becomes of the form px^2+qx+r=0
p=b/2
q=(1.5*m-1)*Asc+m*Ast
r=-(1.5*m-1)*Asc*top_cover-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//as x<Xc, beam is under-reinforced
sigma_cbc=(sigma_st/m)*x/(d-x)//in MPa
sigma_cbc_dash=sigma_cbc*(x-top_cover)/x//in MPa
sigma_sc=1.5*m*sigma_cbc_dash//in MPa
//stress in compression steel is found to be less than its permissible limit of 130 N/mm^2
Mr=b*x*sigma_cbc*(d-x/3)/2+(1.5*m-1)*Asc*sigma_cbc_dash*(d-top_cover)//in N-mm
W=(Mr/10^6)*8/l^2//in kN/m
mprintf("Uniformly distributed load the beam can carry (including self-weight)=%f kN/m",W)
