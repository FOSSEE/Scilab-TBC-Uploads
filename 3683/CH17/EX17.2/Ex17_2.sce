b=300//width, in mm
d=1010//effective depth, in mm
l=7//span, in m
Ast=round(6*0.785*22^2)//six 22 mm dia bars, in sq mm
fck=15//in MPa
fy=250//in MPa
W=45//in kN/m
Wu=1.5*W//factored load, in kN/m
Vu=Wu*l/2//in kN
Tv=Vu*10^3/b/d//in MPa
//Tv<Tcmax, hence OK
p=Ast/b/d*100//p=0.75, approximately
//for p=0.75 and M15 grade concrete
Tc=0.54//in MPa
//Tv>Tc, hence shear reinforcement required
Vus=Vu-Tc*b*d/10^3//in kN
//provide 6 mm dia stirrups
Sv=0.87*fy*2*0.785*6^2*d/Vus/10^3//in mm
Sv=171//approximately, in mm
Svmin=2*0.785*6^2*fy/b/0.4//in mm
Svmin=118//approximately, in mm
Sv=min(Sv,Svmin)//in mm
mprintf("Provide 6 mm dia stirrups at %d mm c/c as shear reinforcement",Sv)
