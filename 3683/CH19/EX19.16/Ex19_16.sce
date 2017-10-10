Pu=2000//in kN
Mux=50//in kN-m
Muy=Mux
fck=20//in MPa
fy=415//in MPa
//assume 2% steel
p=2//in %
Ag=Pu*10^3/(0.4*fck*(1-p/100)+0.67*fy*p/100)//in sq mm
L=sqrt(Ag)//assuming a square column
L=400//in mm
m=Pu*10^3/fck/L/L
n=p/fck
c=50//cover (assume), in mm
d1=c/L//d1=d'/D
//from Fig. 19.21, for d'/D = 0.15 and Pu / fck b D = 0.625
f=0.046
Mux1=f*fck*L*L^2/10^6//in kN-m
Muy1=Mux1
Puz=(0.45*fck*(1-p/100)*L^2+0.75*fy*p/100*L^2)/10^3//in kN
a=Pu/Puz//>0.8
an=2
b=(Mux/Mux1)^an+(Muy/Muy1)^an//>1
//assume 2.5% steel
p=2.5//in %
n=p/fck
//from Fig. 19.21, for d'/D = 0.15 and Pu / fck b D = 0.625
f=0.08
Mux1=f*fck*L*L^2/10^6//in kN-m
Muy1=Mux1
Puz=(0.45*fck*(1-p/100)*L^2+0.75*fy*p/100*L^2)/10^3//in kN
a=Pu/Puz//<0.8
an=1+1/0.6*(a-0.2)
b=(Mux/Mux1)^an+(Muy/Muy1)^an//<1, hence OK
Asc=p/100*L^2//in sq mm
//provide 12-22 mm dia bars
Asc=12*0.785*22^2//in sq mm
mprintf("Summary of design:\nColumn size - %d x %d mm\nSteel-main = 12-22 mm dia bars placed equally on four faces of the column",L,L)
