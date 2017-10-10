b=300//width, in mm
d=500//effective depth, in mm
Ast=4*0.785*20^2//four 20 mm dia bars on tension and compression side, in sq mm
Asc=Ast
top_cover=25//in mm
m=13.33//modular ratio
M=120*10^6//in N-mm
//to find x using b(x^2)/2 + (1.5m-1)Asc(x-d')=mAst(d-x), which becomes of the form px^2+qx+r=0
p=b/2
q=(1.5*m-1)*Asc+m*Ast
r=-(1.5*m-1)*Asc*top_cover-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/(2*p)//in mm
//sigma_cbc_dash=sigma_cbc*(x-d')/x=a*sigma_cbc
a=(x-top_cover)/x
sigma_cbc=M/(b*x*(d-x/3)/2+(1.5*m-1)*Asc*a*(d-top_cover))//in MPa
sigma_st=m*sigma_cbc*(d-x)/x//in MPa
sigma_cbc_dash=a*sigma_cbc//in MPa
sigma_sc=1.5*m*sigma_cbc_dash//in MPa
mprintf("Stress in concrete=%f N/mm^2\nStress in tension steel=%f N/mm^2\nStress in compression steel=%f N/mm^2",sigma_cbc,sigma_st,sigma_sc)
