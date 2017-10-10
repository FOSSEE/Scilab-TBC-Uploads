b=300//in mm
Pu=1500//in kN
Mux=100//in kN-m
Muy=70//in kN-m
fck=15//in MPa
fy=250//in MPa
p=1.5//assume 1.5% steel, placed on four sides
Ag=Pu*10^3/(0.4*fck*(1-p/100)+0.67*fy*p/100)//in sq mm
D=Ag/b//in mm
D=600//assume, in mm
m=p/fck
c=60//cover (assume), in mm
//to find Mux1
n=c/D//n=d'/D
l=Pu*10^3/fck/b/D
//referring to Fig.19.17, for Pu/ fck/ b/ D = 0.56 and p/ fck = 0.1
f=0.038
Mux1=f*fck*b*D^2/10^6//in kN-m
//to find Muy1
b=600//in mm
D=300//in mm
n=c/D//n=d'/D
l=Pu*10^3/fck/b/D
//referring to Fig.19.19, for Pu/ fck/ b/ D = 0.56 and p/ fck = 0.1
f=0.038
Muy1=f*fck*b*D^2/10^6//in kN-m
Puz=(0.45*fck*(1-p/100)*b*D+0.75*fy*p/100*b*D)/10^3//in kN
a=Pu/Puz//>0.8
an=2
r=(Mux/Mux1)^an+(Muy/Muy1)^an//>1
p=4//assume 4% steel, second trial
m=p/fck
//to find Mux1
b=300//in mm
D=600//in mm
//referring to Fig.19.17, for Pu/ fck/ b/ D = 0.56 and p/ fck = 0.26
f=0.15
Mux1=f*fck*b*D^2/10^6//in kN-m
//to find Muy1
b=600//in mm
D=300//in mm
n=c/D//n=d'/D
//referring to Fig.19.19, for Pu/ fck/ b/ D = 0.56 and p/ fck = 0.26
f=0.15
Muy1=f*fck*b*D^2/10^6//in kN-m
Puz=(0.45*fck*(1-p/100)*b*D+0.75*fy*p/100*b*D)/10^3//in kN
a=Pu/Puz//<0.8
an=1+1/0.6*(a-0.2)
r=(Mux/Mux1)^an+(Muy/Muy1)^an//<1, hence OK
//but steel can be reduced
p=3//assume 3% steel, second trial
m=p/fck
//to find Mux1
b=300//in mm
D=600//in mm
//referring to Fig.19.17, for Pu/ fck/ b/ D = 0.56 and p/ fck = 0.2
f=0.12
Mux1=f*fck*b*D^2/10^6//in kN-m
//to find Muy1
b=600//in mm
D=300//in mm
n=c/D//n=d'/D
//referring to Fig.19.19, for Pu/ fck/ b/ D = 0.56 and p/ fck = 0.2
f=0.12
Muy1=f*fck*b*D^2/10^6//in kN-m
Puz=(0.45*fck*(1-p/100)*b*D+0.75*fy*p/100*b*D)/10^3//in kN
a=Pu/Puz//<0.8
an=1+1/0.6*(a-0.2)
r=(Mux/Mux1)^an+(Muy/Muy1)^an//<1, hence OK
Asc=p/100*b*D//in sq mm
//provide 12-25 dia bars
Asc=12*0.785*25^2//in sq mm
mprintf("Summary of design:\nColumn size - %d x %d mm\nSteel-main = 12-25 mm dia bars",D,b)
