//standard five point formula
//example 9.1
//page 350
clc;clear;close;
u2=5;u3=1;
for i=1:3
    u1=(u2+u3+6)/4;
    u2=u1/2+5/2;
    u3=u1/2+1/2;
    printf(' the values are u1=%d\t u2=%d\t u3=%d\t\n\n',u1,u2,u3);
end