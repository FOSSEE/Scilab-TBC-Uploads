clc
// initialization of variables
clear
P=35 //kN
Phi=5*%pi/9
E=72e9 //Pa
L=3 //m
Ix=39.69*10^6 //mm^4
Iy=30.73*10^6 //mm^4
Ixy=0
//calculations
P=P*1e3
Ix=Ix*10^-12
Iy=Iy*10^-12
alpha=atan(-Ix/(Iy*tan(Phi)))
M=P*L/4
Mx=M*sin(Phi)
yA=-118*10^-3 //m
xA=70*10^-3 //m
xB=-xA
yB=82*10^-3 //m
S_comp=Mx*(yA-xA*tan(alpha))/(Ix-Ixy*tan(alpha))
S_tens=Mx*(yB-xB*tan(alpha))/(Ix-Ixy*tan(alpha))
printf(' Tensile strength = %.1f M Pa \n',S_tens/10^6)
printf(' Compressive Strength = %.1f M Pa',S_comp/10^6)
v=P*L^3*sin(Phi)/(48*E*Ix)
u=-v*tan(alpha)
delta=sqrt(u^2+v^2)
printf('\n The total deflection is %.2f mm',delta*10^3)
