
clc;
clear;
format('v',6);
mod_B=20;
angle_B=150;
mod_A=10;
angle_A=0;
Bx=mod_B*cosd(angle_B);
By=mod_B*sind(angle_B);
Ax=mod_A*cosd(angle_A);
Ay=mod_A*sind(angle_A);
Cp=Ax+Bx;            //parallel to A
Cv=Ay+By ;           //perpendicular to A
disp(Cv,"perpendicular to A,Cv(in Newton)=",Cp,"parallel to A,Cp(in Newton)=");
