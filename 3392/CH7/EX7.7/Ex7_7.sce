clc
// initialization of variables
clear
L=3 //m
Ix=56.43e6 //mm^4
Iy=18.11e6 //mm^4
Ixy=22.72e6 //mm^4
Phi=%pi/3
E=200e9 //Pa
Y=300e6 //Pa
//calculations
Ix=Ix*10^-12
Iy=Iy*10^-12
Ixy=Ixy*10^-12
yA=-120*10^-3 //m
xA=-91*10^-3 //m
Nr=Ixy-Ix/tan(Phi)
Dr=Iy-Ixy/tan(Phi)
alpha=atan(Nr/Dr)
// M=-L*P To know P we do the following
Mxk=-L*sin(Phi)//Mx=Mxk*P
P=Y*(Ix-Ixy*tan(alpha))/(Mxk*(yA-xA*tan(alpha)))
printf('P = %.2f kN \n',P/10^3)
v=P*L^3*sin(Phi)/(3*E*(Ix-Ixy*tan(alpha)))
u=-v*tan(alpha)
delta=sqrt(u^2+v^2)
printf(' deflection = %.2f mm',delta*10^3)
// Wrong calculation starting from v in Textbook

