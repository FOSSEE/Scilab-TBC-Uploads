clc;
clear;
U=88;//fps
Ds=40;//ft
Dc=15;//ft
b=50;//ft
Res=U*Ds/(1.57*(10^(-4)));
Rec=U*Dc/(1.57*(10^(-4)));
//from these values of Re drag coefficients are found as
CDs=0.3;
CDc=0.7;
//by summing moments about the base of the tower
Drs=0.5*0.00238*(U^2)*%pi*(Ds^2)*CDs/4;//lb
Drc=0.5*0.00238*(U^2)*b*Dc*CDc;//lb
M=(Drs*(b+(Ds/2)))+(Drc*(b/2));//ft*lb
disp("ft*lb",M,"The moment needed to prevent the tower from tripping=")
