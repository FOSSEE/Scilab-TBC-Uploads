P=500//in kN
Pu=1.5*P//in kN
fck=15//in MPa
fy=250//in MPa
l=3//unsupported length, in m
//assume 1% steel
Ag=Pu*10^3/(0.4*fck*0.99+0.67*fy*0.01)//in sq mm
L=sqrt(Ag)//assuming a square column
L=315//in mm
emin=l*10^3/500+L/30//<20
emin=20//in mm
ep=0.05*L//<emin, hence the column is to be checked for bending
Mu=Pu*10^3*emin//in N-mm
a=Pu*10^3/fck/L/L
b=Mu/fck/L/L^2//b=0.032
d1=40//cover(assume), in mm
c=d1/L//c=d'/D
//for d'/D = 0.15
p=0.07*fck//in %
Asc=p/100*L^2//in sq mm
//provide 4-20 mm dia bars
Asc=4*0.785*20^2//in sq mm
mprintf("Summary of design:\nColumn size - %d x %d mm\nSteel-main = 4-20 mm dia bars",L,L)
