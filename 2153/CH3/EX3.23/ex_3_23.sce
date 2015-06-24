// Example 3.23: angle between planes (122) and (111)
clc;
clear;
close;
a=1;// assume
a1=[1;2;2];//lattice planes
a2=[1;1;1];//lattice planes
d1=a/(sqrt(a1(1,1)^2+a1(2,1)^2+a1(3,1)^2));//perpendicular distance between origin and (111)planes
d2=a/(sqrt(a2(1,1)^2+a2(2,1)^2+a2(3,1)^2));//perpendicular distance between origin and (222)planes
cphi= ((a1(1,1)*a2(1,1))+(a1(2,1)*a2(2,1))+(a1(3,1)*a2(3,1)))*(d1*d2);//
d=acosd(cphi);// in degree
d1=floor(d);//
d2=d-d1;//
disp("angle between planes (122) and (111) is "+string(d1)+" degree "+string(round(60*d2))+" minutes")


