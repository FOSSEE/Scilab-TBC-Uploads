b=230//width, in mm
d=600//effective depth, in mm
Asc=554//in sq mm
Ast=1524//in sq mm
top_cover=30//in mm
fck=15//in MPa
fy=415//in MPa
Xc=0.479*d//in mm
fcc=0.446*fck//in MPa
//for d'/d=30/600=0.05 and Fe415 grade steel,
fsc=355//in MPa
Mu=(0.36*fck*b*Xc*(d-0.416*Xc)+(fsc-fcc)*Asc*(d-top_cover))/10^6//in kN-m
mprintf("Moment of resistance of the beam = %f kN-m",Mu)
