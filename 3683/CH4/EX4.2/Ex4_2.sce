b=230//width, in mm
d=500//effective depth, in mm
W=24//UDL including self-weight, in kN/m
Ast=4*0.785*20^2//four 20 mm dia bars, in sq mm
Pt=Ast/(b*d)*100//percentage tensile steel
l=4.5//span, in m
V=W*l/2//in kN
Tv=(V*10^3)/(b*d)//in MPa
//for Pt=1.1% and for M20 grade concrete
Tc=0.40//in MPa
//as Tv>Tc, shear reinforcement is required
mprintf("Nominal shear stress in beam=%f MPa\nShear strength of concrete=%f MPa", Tv,Tc)
