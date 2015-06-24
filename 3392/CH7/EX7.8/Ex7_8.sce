clc
// initialization of variables
clear
Ix=937e+06 //mm^4
Iy=18.7e+6 //mm^4
Ixy=0
yA=305 //mm
xA=90.5 //mm
Phi=1.5533 //rad
//calculations
Ix=Ix*10^-12
Iy=Iy*10^-12
Ixy=Ixy*10^-12
yA=yA*10^-3 //m
xA=xA*10^-3 //m
alpha=atan(-Ix/(Iy*tan(Phi)))
Mxk=sin(Phi) // Mx=Mxk*M
Sigma_Ak1=Mxk*(yA-xA*tan(alpha))/(Ix-Ixy*tan(alpha)) 
//Sigma_A=Aigma_Ak*M
// When the plane of the loads coincide with the y axes
Sigma_Ak2=yA/Ix
ratio=Sigma_Ak1/Sigma_Ak2
percent=(ratio-1)*100
printf('alpha = %.3f rad',alpha)
printf('\n The maximum stress in the beam is increased %.1f percent when the plane of the loads is merely 1 degre from the symmetrical vertical plane',percent)
// Wrong alpha given in the textbook
