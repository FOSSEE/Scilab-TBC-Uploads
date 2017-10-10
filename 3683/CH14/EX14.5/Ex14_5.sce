b=1000//width, in mm
d=120//effective depth, in mm
Ast=1412//in sq mm
lef=3.2//in m
fck=20//in MPa
fy=250//in MPa
Xu=0.87*fy*Ast/0.36/fck/b//in mm
Xc=0.531*d//in mm
//as Xu<Xc, it is under-reinforced section, hence OK
Mu=0.87*fy*Ast*(d-0.416*Xu)/10^6//in kN-m
Wu=Mu*8/lef^2//in kN/m
self_weight=25*(b/1000)*(d/1000)//in kN/m
W=Wu/1.5-self_weight//in kN/m
mprintf("Safe load on the slab=%f kN/m",W)
