P=500//in kN
Pu=1.5*P//in kN
fck=15//in MPa
fy=250//in MPa
l=3//unsupported length, in m
//assume 1% steel
Ag=Pu*10^3/(0.4*fck*0.99+0.67*fy*0.01)//in sq mm
b=250//in mm
D=Ag/b//in mm
D=400//round-off, in mm
emin1=l*10^3/500+D/30//in direction of Y axis, in mm, < 20 mm
emin1=20//in mm
ep1=0.05*D//=emin, hence no moment is required to be considered in this direction
emin2=l*10^3/500+b/30//in direction of X axis, in mm, < 20 mm
emin2=20//in mm
ep2=0.05*b//<emin, hence moment in this direction needs to be considered
//interaction diagram
b=400//in mm
D=250//in mm
Mu=Pu*10^3*emin2//in N-mm
m=Pu*10^3/fck/b/D
n=Mu/fck/b/D^2//b=0.032
d1=40//cover(assume), in mm
c=d1/D//c=d'/D
//referring to Fig. 19.12
p=0.08*fck//in %
Asc=p/100*b*D//in sq mm
//provide 6-16 dia bars
Asc=6*0.785*16^2//in sq mm
mprintf("Summary of design:\nColumn size - %d x %d mm\nSteel-main = 6-16 mm dia bars",D,b)
