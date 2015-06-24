clc
// initialization of variables
clear
P=170 //kN
A=645 // (mm)^2
// part (a)
E=211.4 // G Pa (from figure)
Y=252.6 // M Pa (from figure)
Beta=0.0799 // G Pa (from figure)
Ey=Y/E
// The stress strain law given is
// Sigma= E*eps  for eps< Ey
// Sigma= (1-Beta)*Y + Beta*E*eps  otherwise

// part (b)
th=atan(1.8/2.4)// radians
F=P/(2*cos(th))
F=F*10^3 //N
A=A*10^-6 //m^2
E=E*10^9 //Pa
Y=Y*10^6 //Pa
L=3.0 //m
Sigma=F/A
if(Sigma<Y)
    eps=Sigma/E
else
   eps=(Sigma-(1-Beta)*Y )/(Beta*E) 
end
u=eps*L/cos(th)
u=u*10^3 //mm
// results
printf('part (b)\n')
printf(' Deflection = %.3f mm',u)

// part (c)
P=270 //kN
F=P/(2*cos(th))
F=F*10^3 //N
Sigma=F/A
if(Sigma<Y)
    eps=Sigma/E
else
   eps=(Sigma-(1-Beta)*Y )/(Beta*E) 
end
u=eps*L/cos(th)
u=u*10^3 //mm
// results
printf('\n part (c)\n')
printf(' Deflection = %.3f mm for P = %.d kN',u,P)

P=300 //kN
F=P/(2*cos(th))
F=F*10^3 //N
Sigma=F/A
if(Sigma<Y)
    eps=Sigma/E
else
   eps=(Sigma-(1-Beta)*Y )/(Beta*E) 
end
u=eps*L/cos(th)
u=u*10^3 //mm
// results
printf('\n Deflection = %.3f mm for P = %.d kN',u,P)

