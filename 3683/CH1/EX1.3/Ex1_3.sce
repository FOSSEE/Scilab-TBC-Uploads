//assume d = 400 mm and b = 200 mm
b=200//in mm
d=400//in mm
sigma_cbc=5//in MPa
sigma_st=140//in MPa
m=18.66//modular ratio
Xc=d/(1+sigma_st/m/sigma_cbc)//in mm
z=d-Xc/3//in mm
Mr=b*Xc*sigma_cbc/2*z//in N-mm
Ast=b*Xc*sigma_cbc/2/sigma_st//in sq mm
pt=Ast*100/b/d//in %
mprintf("When d is assumed as 400 mm and b as 200 mm\n(a) Position of neutral axis=%f mm\n(b) Lever arm=%f mm\n(c) Moment of resistance=%f kN-m\n(d) Percentage of steel=%f percent",Xc,z,Mr/10^6,pt)
