b=250//width, in mm
d=500//effective depth, in mm
Ast=4*0.785*20^2//four 20 mm dia bars, in sq mm
fck=15//in MPa
fy=250//in MPa
Xu=round(0.87*fy*Ast/0.36/fck/b)//in mm
Xc=0.531*d//in mm
//as Xu<Xc, it is under-reinforced section, hence OK
Mu=0.87*fy*Ast*(d-0.416*Xu)/10^6//in kN-m
mprintf("Moment of resistance of the beam=%f kN-m", Mu)
