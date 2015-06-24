//Example 21.1
//Mechanics of Machining
//Page No. 685
clc;clear;close;

a=6;                    //in degrees
sigma_s=60000;                    //in psi
su_s=91000;                    //in psi
sigma_c=10000;                    //in psi
su_c=30000;                    //in psi
deff('y=s(fi)','y=cosd(fi-a)*sind(fi)-sigma_s/su_s*(cosd(45-a/2)*sind(45+a/2))');
deff('y=c(fi)','y=cosd(fi-a)*sind(fi)-sigma_c/su_c*(cosd(45-a/2)*sind(45+a/2))');
[fi,v,info]=fsolve(0,s);
printf('\nShear Plane Angle for 1040 steel= %g deg',fi)
[fi,v,info]=fsolve(0,c);
printf('\nShear Plane Angle for Copper = %g deg',fi)
