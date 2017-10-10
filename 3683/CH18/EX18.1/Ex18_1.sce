Pu=3000//in kN
fck=20//in MPa
fy=415//in MPa
l=3//unsupported length, in m
//assume 1% steel
Ag=Pu*10^3/(0.4*fck*0.99+0.67*fy*0.01)//in sq mm
L=sqrt(Ag)//assuming a square column
L=530//in mm
Asc=0.01*L^2//in sq mm
emin=l*10^3/500+L/30//in mm
ep=0.05*L//>emin, hence OK
mprintf("Column size - %d x %d mm",L,L)
