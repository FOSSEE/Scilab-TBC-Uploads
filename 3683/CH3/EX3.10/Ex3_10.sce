Bf=1300//width of flange, in mm
Df=100//thickness of flange, in mm
d=500//effective depth, in mm
sigma_cbc=5//in MPa
sigma_st=275//in MPa
m=18.66//modular ratio
Ast=1570//in sq mm
Asc=1256//in sq mm
top_cover=30//in mm
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//assume x>Df; equating moments of area on compression and tension sides about N.A.
x=(m*Ast*d+Bf*Df^2/2+(1.5*m-1)*Asc*top_cover)/(m*Ast+Bf*Df+(1.5*m-1)*Asc)//in mm
//as x<Xc, beam is under-reinforced
sigma_cbc=sigma_st/m*x/(d-x)//in MPa
sigma_cbc_dash=sigma_cbc*(x-top_cover)/x//stress in concrete at level of compression steel, in MPa
sigma_cbc_double_dash=sigma_cbc*(x-Df)/x//stress in concrete at the underside of the slab, in MPa
//to find lever arm
z=round(d-(sigma_cbc+2*sigma_cbc_double_dash)/(sigma_cbc+sigma_cbc_double_dash)*Df/3)//in mm
//taking moments about tensile steel
Mr=Bf*Df*(sigma_cbc+sigma_cbc_double_dash)*z/2+(1.5*m-1)*Asc*sigma_cbc_dash*(d-top_cover)//in N-mm
mprintf("Moment of resistance of the beam=%f kN-m", Mr/10^6)
