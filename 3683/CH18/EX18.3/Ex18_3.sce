b=225//in mm
D=500//in mm
c=45//cover, in mm
Asc=2463//in sq mm
Ast=Asc
fck=15//in MPa
fy=250//in MPa
fcc=0.446*fck//in MPa
//(i)
xu=1.1*D//in mm
m=0.43*D//in mm
esc1=0.002*(xu-c)/(xu-m)
esc2=0.002*(xu-D+c)/(xu-m)
//by interpolation
fsc1=217.5//in MPa
fsc2=217.5*esc2/0.0010875//in MPa
//stress block parameters for xu / D = 1.1
n=0.384
l=0.443
A=n*fck*D//area of stress block
r=l*D//distance of c.g., in mm
Pu=(A*b+Asc*(fsc1-fcc)+Ast*fsc2)/10^3
Mu=(A*b*(D/2-r)+Asc*(fsc1-fcc)*(D/2-c)-Ast*fsc2*(D/2-c))/10^6
mprintf("(i) For xu = 1.1 D\nP=%f kN\nMu=%f kN-m\n",Pu,Mu)
//answer in textbook is incorrect
//(ii)
xu=330//in mm
esc=0.0035*(xu-c)/xu
est=0.0035*(D-c-xu)/xu
//by interpolation
fsc=217.5//in MPa
fst=217.5//in MPa
Pu=(0.36*fck*b*xu+Asc*(fsc-fcc)-Ast*fst)/10^3//in kN
Mu=(0.36*fck*b*xu*(D/2-0.416*xu)+Asc*(fsc-fcc)*(D/2-c)+Ast*fst*(D/2-c))/10^6//in kN-m
mprintf("(ii) For xu = 330 mm\nP=%f kN\nMu=%f kN-m",Pu,Mu)
