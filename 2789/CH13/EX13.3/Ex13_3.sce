clear;
clc;

//page no. 524

c = 6;//ft
b = 36;//ft
AR1 = 6;//aspect ratio
Cd = 0.0543;//drag coefficient
Cl = 0.960;//lift coefficient
alpha1 = 7.2;//degrees
AR2 = 8;

//for aspect ratio = 8
CL = 0.960;//negligible change of lift coefficient
//for aspect ratio = 6
C_Di = Cl^2 /(%pi*AR1);
//for aspect ratio = infinity
C_D0 = Cd - C_Di;
//for AR = 8
C_D = C_D0 + Cl^2 /(%pi*AR2);
//for AR = 6
alpha_i = (180/%pi)*Cl/(%pi*AR1);
//for AR = infinty
alpha_0 = alpha1 - alpha_i;
//for AR = 8
alpha = alpha_0 + Cl/(AR2*%pi) *(360/(2*%pi));

printf('Lift coefficient = %.3f (negligible change of lift coefficient)',CL);
printf('\n Drag coefficient = %.4f',C_D);
printf('\n Angle of attack = %.1f degress',alpha);
