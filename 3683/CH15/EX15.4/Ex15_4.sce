b=225//width, in mm
d=500//effective depth, in mm
Asc=125//in sq mm
Ast=754//in sq mm
top_cover=50//in mm
fck=15//in MPa
fy=500//in MPa
Xc=0.456*d//in mm
fcc=0.446*fck//in MPa
//for d'/d=50/500=0.1 and Fe500 grade steel,
fsc=412//in MPa
Mu=(0.36*fck*b*Xc*(d-0.416*Xc)+(fsc-fcc)*Asc*(d-top_cover))/10^6//in kN-m
mprintf("Moment of resistance of the beam = %f kN-m",Mu)
