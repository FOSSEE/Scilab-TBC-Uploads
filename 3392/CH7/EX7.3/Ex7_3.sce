clc
// initialization of variables
clear
P=12 //kN
Phi=%pi/3
// calculations
L=3 //m
P=12 //kN
A=10000 //mm^2
Ix=39.69*10^6 //mm^4
yo=82 //mm
Iy=30.73*10^6 //mm^4
Ixy=0
P=P*10^3
Ix=Ix*10^-12
Iy=Iy*10^-12
alpha=atan(-Ix/(Iy*tan(Phi)))
M=-L*P
Mx=M*sin(Phi)
yA=-118*10^-3 //m
xA=-70*10^-3 //m
xB=-xA
yB=82*10^-3 //m
S_A=Mx*(yA-xA*tan(alpha))/(Ix-Ixy*tan(alpha))
S_B=Mx*(yB-xB*tan(alpha))/(Ix-Ixy*tan(alpha))
printf(' Sigma A = %.1f M Pa \n',S_A/10^6)
printf(' Sigma B = %.1f M Pa',S_B/10^6)
