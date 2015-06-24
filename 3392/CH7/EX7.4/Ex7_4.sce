clc
// initialization of variables
clear
P=4 //kN
L=1.2 //m
A=1900 //mm^2
Ix=2.783*10^6 //mm^4
Iy=1.003*10^6 //mm^4
Ixy=-0.973*10^6 //mm^4
P=P*10^3
Ix=Ix*10^-12
Iy=Iy*10^-12
Ixy=Ixy*10^-12
A=1900 //mm^2
xo=19.74 //mm
yo=39.74 //mm
Phi=2*%pi/3
Nr=Ixy-Ix/tan(Phi)
Dr=Iy-Ixy/tan(Phi)
alpha=atan(Nr/Dr)
M=L*P
Mx=M*sin(Phi)
yA=39.74*10^-3 //m
xA=-60.26*10^-3 //m
xB=19.74*10^-3
yB=-80.26*10^-3 //m
S_A=Mx*(yA-xA*tan(alpha))/(Ix-Ixy*tan(alpha))
S_B=Mx*(yB-xB*tan(alpha))/(Ix-Ixy*tan(alpha))
printf('part (a)')
printf('\n Sigma A = %.1f M Pa \n',S_A/10^6)
printf(' Sigma B = %.1f M Pa',S_B/10^6)

// part (b)
th=1/2*atan(-2*Ixy/(Ix-Iy))
th1=0.415 //rad
th2=-1.156 //rad
IX=Ix*(cos(th1))^2+Iy*(sin(th1))^2-2*Ixy*sin(th1)*cos(th1)
IY=Ix+Iy-IX
Phi=2*%pi/3-th1
alphA=-IX/(IY*tan(Phi))
alpha=alphA+th1
XA=xA*cos(th1)+yA*sin(th1)
YA=yA*cos(th1)-xA*sin(th1)
XB=xB*cos(th1)+yB*sin(th1)
YB=yB*cos(th1)-xB*sin(th1)
MX=M*sin(Phi)
MY=-M*cos(Phi)
S_A=MX*YA/IX-MY*XA/IY
S_B=MX*YB/IX-MY*XB/IY
printf('\n part (b)')
printf('\n Sigma A = %.1f M Pa \n',S_A/10^6)
printf(' Sigma B = %.1f M Pa',S_B/10^6)
