P=1000//in kN
Pu=1.5*P//in kN
fck=15//in MPa
fy=415//in MPa
l=3.5//unsupported length, in m
//assume 1% steel
Ag=Pu*10^3/(0.4*fck*0.99+0.67*fy*0.01)//in sq mm
L=sqrt(Ag)//assuming a square column
L=420//in mm
emin=l*10^3/500+L/30//in mm
ep=0.05*L//=emin, hence OK
Asc=0.01*L^2//in sq mm
//provide 6-20 mm dia bars
Asc=6*0.785*20^2//in sq mm
mprintf("Summary of design:\nColumn size - %d x %d mm\nSteel-main = 6-20 mm dia bars",L,L)
