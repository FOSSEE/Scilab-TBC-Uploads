b=300//width, in mm
d=600//effective depth, in mm
Ast=1256//in sq mm
Asc=1256//in sq mm
top_cover=30//in mm
sigma_cbc=7//in MPa
sigma_st=190//in MPa
m=13.33//modular ratio
//using elastic theory method
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
Mr1=b*x*sigma_cbc*(d-x/3)/2+(1.5*m-1)*Asc*sigma_cbc_dash*(d-top_cover)//in N-mm
//using steel beam theory method
Mr2=Ast*sigma_st*(d-top_cover)//in N-mm
mprintf("Moment of resistance of the beam using elastic theory method=%f kN-m\nMoment of resistance of the beam using elastic theory method=%f kN-m",Mr1/10^6,Mr2/10^6)
