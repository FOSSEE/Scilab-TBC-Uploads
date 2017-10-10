Bf=1500//width of flange, in mm
Bw=200//breadth of web, in mm
Df=100//thickness of flange, in mm
d=400//effective depth, in mm
sigma_cbc=5//in MPa
sigma_st=140//in MPa
m=18.66//modular ratio
Ast=2190//in sq mm
//assume x>Df
x=(m*Ast*d+Bf*Df^2/2)/(m*Ast+Bf*Df)//in mm
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//as x<Xc, beam is under-reinforced
sigma_cbc=sigma_st/m*x/(d-x)//in MPa
sigma_cbc_dash=sigma_cbc*(x-Df)/x//in MPa
//to find lever arm
z=d-(sigma_cbc+2*sigma_cbc_dash)/(sigma_cbc+sigma_cbc_dash)*Df/3//in mm
//taking moments about tensile steel
Mr=Bf*Df*(sigma_cbc+sigma_cbc_dash)*z/2//in N-mm
mprintf("Moment of resistance of the beam=%f kN-m", Mr/10^6)
