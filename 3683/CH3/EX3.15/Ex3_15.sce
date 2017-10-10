Df=120//thickness of flange, in mm
Bw=200//breadth of web, in mm
d=550//effective depth, in mm
l=6//span, in m
Bf=l*1000/12+Bw+3*Df//in mm
m=13.33//modular ratio
Ast=3200//in sq mm
M=190*10^6//in N-mm
//assume x>Df; equating moments of area on compression and tension sides about N.A.
x=(m*Ast*d+Bf*Df^2/2)/(m*Ast+Bf*Df)//in mm
//we find that x>Df, hence our assumption that x>Df is correct
//as x<Xc, beam is under-reinforced; let stress in concrete at underside of slab be equal to 'a' times the stress in concrete at top
a=(x-Df)/x
//to find lever arm
z=d-(1+2*a)/(1+a)*Df/3//in mm
z=500//round-off, in mm
//taking moments about tensile steel
sigma_cbc=M/(Bf*Df*(1+a)*z/2)//in MPa
sigma_st=m*sigma_cbc*(d-x)/x//in MPa
mprintf("Stress in concrete=%f N/mm^2\nStress in tension steel=%f N/mm^2",sigma_cbc,sigma_st)
