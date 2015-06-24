//2.33
clc;
Vm=326.56;
f=50;
Ls=0.2*10^-3;
Io=200;
w=2*%pi*f;
a=3*w*Ls*Io/%pi;
b=3*3^0.5*Vm/%pi;
disp('For firing angle 20 degree')
alph=20;
Angle_overlap= acosd((b*cosd(alph)-a)/b)-alph;
printf("Overlap angle= %.1f degree", Angle_overlap)
disp('For firing angle 30 degree')
alph=30;
Angle_overlap= acosd((b*cosd(alph)-a)/b)-alph;
printf("Overlap angle= %.2f degree", Angle_overlap)
disp('For firing angle 60 degree')
alph=60;
Angle_overlap= acosd((b*cosd(alph)-a)/b)-alph;
printf("Overlap angle= %.4f degree", Angle_overlap)