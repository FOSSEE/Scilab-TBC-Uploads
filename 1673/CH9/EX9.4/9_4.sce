//poisson equation
//exaample 9.4
//page 354
clc;clear;close;
u2=0;u4=0;
printf('  u1\t    u2\t   u3\t   u4\t\n\n');
for i=1:6
    u1=u2/2+30;
    u2=(u1+u4+150)/4;
    u4=u2/2+45;
    printf(' %0.2f\t   %0.2f\t   %0.2f\t   %0.2f\n',u1,u2,u2,u4);
end
printf(' from last two iterates we conclude u1=67   u2=75   u3=75   u4=83\n')