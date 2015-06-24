clc
//Initialization of variables
q=27/4
g=32.2
Q=27 //cfs
d=2 //ft
dz1=0.3 //ft
//calculations
yc=(q^2 /g)^(1/3)
V2=Q/(4*yc)
V1=Q/(4*d)
dz = d+ V1^2 /(2*g) - V2^2/(2*g) - yc
y2=1.6 //ft
drop = d-(y2+dz1)
dz2=0.6 //ft
up=2.12 //ft
down=0.66 //ft
//results
printf("yc = %.2f ft. Since, depth is greater than critical depth. the flow is subcritical",yc)
printf("\n Drop in water height = %.2f ft",drop)
printf("\n Drop upstream = %.2f ft and Downstream = %.2f ft",up,down)
