b=250//column width, in mm
D=500//column depth, in mm
lex=4//in m
ley=4//in m
Pu=300//in kN
Asc=1472//in sq mm
Ast=1472//in sq mm
fck=15//in MPa
fy=250//in MPa
c=50//cover, in mm
Max=Pu*10^3*D/2000*(lex/(D/10^3))^2/10^6//in kN-m
May=Pu*10^3*b/2000*(ley/(b/10^3))^2/10^6//in kN-m
Puz=(0.45*fck*(b*D-(Asc+Ast))+0.75*fy*(Asc+Ast))/10^3//in kN
//to find Pb
xu=(D-c)/(1+0.002/0.0035)//in mm
fsc=217.5//in MPa
fst=217.5//in MPa
Pb=(0.36*fck*b*xu+fsc*Asc-fst*Ast)/10^3//in kN
k=(Puz-Pu)/(Puz-Pb)//>1
k=1
Max=k*Max//in kN-m
May=k*May//in kN-m
mprintf("Additional Moments are:\nMax=%f kN/m\nMay=%f kN-m", Max,May)
