//example 4.5
//linearization of non-linear law
//page 131
clc;clear;close;
x=[3 5 8 12];
y=[7.148 10.231 13.509 16.434];
for i=1:4
    X(i)=1/x(i);
    Y(i)=1/y(i);
    X2(i)=X(i)^2;
    XY(i)=X(i)*Y(i);
end
S_X=0,S_Y=0,S_X2=0,S_XY=0;
printf('X\t    Y\t    X^2\t    XY\t\n\n');
for i=1:4
printf('%0.3f\t    %0.3f\t   %0.3f\t   %0.3f\t\n',X(i),Y(i),X2(i),XY(i));
S_X=S_X+X(i);
S_Y=S_Y+Y(i);
S_X2=S_X2+X2(i);
S_XY=S_XY+XY(i);    
end
printf('----------------------------------------------------------------------------------------\n\n');
printf('%0.3f\t    %0.3f\t   %0.3f\t   %0.3f\n\n',S_X,S_Y,S_X2,S_XY);
A1=(4*S_XY-S_X*S_Y)/(4*S_X2-S_X^2);
Avg_X=S_X/4;
Avg_Y=S_Y/4;
A0=Avg_Y-A1*Avg_X;
printf('y=x/(%f+%f*x)',A1,A0);
