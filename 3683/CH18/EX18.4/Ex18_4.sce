b=300//in mm
D=400//in mm
c=30//cover, in mm
Asc=452//in sq mm
Ast=Asc
fck=15//in MPa
fy=415//in MPa
fcc=0.446*fck//in MPa
//(i)
xu=1.4*D//in mm
m=0.43*D//in mm
esc1=0.002*(xu-c)/(xu-m)
esc2=0.002*(xu-D+c)/(xu-m)
//by interpolation
fsc1=356.8//in MPa
fsc2=238.68//in MPa
//stress block parameters for xu / D = 1.4
n=0.417
l=0.475
A=n*fck*D//area of stress block
r=l*D//distance of c.g., in mm
Pu=(A*b+Asc*(fsc1-fcc)+Ast*fsc2)/10^3//in kN
Mu=(A*b*(D/2-r)+Asc*(fsc1-fcc)*(D/2-c)-Ast*fsc2*(D/2-c))/10^6//in kN-m
mprintf("(i) For xu = 1.4 D\nP=%f kN\nMu=%f kN-m\n",Pu,Mu)
//(ii)
xu=370//in mm
esc=0.0035*(xu-c)/xu
est=0.0035*(D-c-xu)/xu
//by interpolation
fsc=355.8//in MPa
Pu=(0.36*fck*b*xu+Asc*(fsc-fcc))/10^3//in kN
Mu=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*(fsc-fcc)*(D/2-c))/10^6//in kN-m
mprintf("(ii) For xu = 370 mm\nP=%f kN\nMu=%f kN-m",Pu,Mu)
