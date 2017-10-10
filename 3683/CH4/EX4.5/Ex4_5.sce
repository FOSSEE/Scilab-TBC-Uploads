b=300//width, in mm
d=1010//effective depth, in mm
W=45//UDL including self-weight, in kN/m
Ast=6*0.785*22^2//six 22 mm dia bars, in sq mm
l=7//span, in m
sigma_cbc=5//in MPa
sigma_sv=140//in MPa
Fy=250//in MPa
V=W*l/2//in kN
Tv=(V*10^3)/(b*d)//in MPa
Tcmax=1.6//in MPa
//Tv<Tcmax; OK
Pt=Ast/(b*d)*100//percentage tensile steel
//for given Pt and for M15 grade concrete
Tc=0.34//in MPa
Vs=V-Tc*b*d/10^3//in kN
//providing 6 mm dia stirrups
dia=6//in mm
Asv=2*0.785*dia^2//in sq mm
Sv1=Asv*sigma_sv*d/(Vs*10^3)//in mm
Sv1=145//round-off, in mm
//Sv<0.75d or 450 mm, whichever is less; hence OK
//calculating minimum spacing of shear reinforcement
Sv2=Asv*Fy/(b*0.4)//in mm
Sv2=118//round-off, in mm
Sv=min(Sv1,Sv2)
mprintf("Provide 6 mm dia bars at %d mm c/c throughout the length of the beam, as shear reinforcement", Sv)
