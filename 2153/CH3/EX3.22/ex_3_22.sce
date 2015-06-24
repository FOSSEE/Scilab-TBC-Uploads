// Example 3.22: perpendicular distance
clc;
clear;
close;
a=1;//constant assume
a1=[1;1;1];//lattice planes
a2=[2;2;2];//lattice planes
d1=a/(sqrt(a1(1,1)^2+a1(2,1)^2+a1(3,1)^2));//perpendicular distance between origin and (111)planes
d2=a/(sqrt(a2(1,1)^2+a2(2,1)^2+a2(3,1)^2));//perpendicular distance between origin and (222)planes
d22 = d1-d2;//perpendicular distance between the planes (111) and (222)
disp(d22,"perpendicular distance between the planes (111) and (222)")

