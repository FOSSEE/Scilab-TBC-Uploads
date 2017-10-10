b=230//width, in mm
d=500//effective depth, in mm
l=4.5//span, in m
Ast=4*0.785*20^2//four 20 mm dia bars, in sq mm
fck=20//in MPa
W=24//in kN/m
Wu=1.5*W//factored load, in kN/m
Vu=Wu*l/2//in kN
Tv=Vu*10^3/b/d//in MPa
Tcmax=2.8//for M20, in MPa
//Tv<Tcmax, hence OK
p=Ast/b/d*100//p=1.1, approximately
//for p=1.1 and M20 grade concrete
Tc=0.64//in MPa
//Tv>Tc, hence shear reinforcement required
mprintf("Nominal shear stress=%f MPa\nShear strength of concrete=%f MPa",Tv,Tc)
