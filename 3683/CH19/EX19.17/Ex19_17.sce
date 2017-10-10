b=400//in mm
D=500//in mm
Pu=1600//in kN
Mux=90//in kN-m
Muy=50//in kN-m
fck=15//in MPa
fy=415//in MPa
p=1.5//assume 1.5% steel, placed on four sides
m=p/fck
c=50//cover (assume), in mm
//to find Mux1
n=c/D//n=d'/D
l=Pu*10^3/fck/b/D
//referring to Fig.19.20, for Pu/ fck/ b/ D = 0.53 and p/ fck = 0.1
f=0.09
Mux1=f*fck*b*D^2/10^6//in kN-m
//to find Muy1
b=500//in mm
D=400//in mm
n=c/D//n=d'/D
l=Pu*10^3/fck/b/D
//referring to Fig.19.21, for Pu/ fck/ b/ D = 0.53 and p/ fck = 0.1
f=0.08
Muy1=f*fck*b*D^2/10^6//in kN-m
Puz=(0.45*fck*(1-p/100)*b*D+0.75*fy*p/100*b*D)/10^3//in kN
a=Pu/Puz//<0.8
an=1+1/0.6*(a-0.2)
r=(Mux/Mux1)^an+(Muy/Muy1)^an//<1
Asc=p/100*b*D//in sq mm
//provide 6-16 mm + 6-20 mm dia bars
Asc=6*0.785*16^2+6*0.785*20^2//in sq mm
mprintf("Summary of design:\nColumn size - %d x %d mm\nSteel-main = 6-16 mm + 6-20 mm dia bars",D,b)
//answer in textbook is incorrect
