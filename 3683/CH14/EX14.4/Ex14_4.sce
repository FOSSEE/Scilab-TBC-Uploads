b=300//width, in mm
d=650//effective depth, in mm
Ast=942//in sq mm
lef=6//in m
fck=20//in MPa
fy=340//in MPa
Xu=round(0.87*fy*Ast/0.36/fck/b)//in mm
Xc=0.5*d//in mm
//as Xu<Xc, it is under-reinforced beam, hence OK
Mu=0.87*fy*Ast*(d-0.416*Xu)/10^6//in kN-m
Wu=Mu*8/lef^2//in kN/m
self_weight=25*(b/1000)*(d/1000)//in kN/m
W=Wu/1.5-self_weight//in kN/m
mprintf("Safe load on the beam=%f kN/m",W)
