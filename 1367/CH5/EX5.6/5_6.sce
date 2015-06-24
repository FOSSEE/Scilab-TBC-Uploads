//Find Linear Density per unit length
//Ex:5.6
clc;
clear;
close;
a=3.61*10^-10;//unit cell in m
r_110=2/(sqrt(2)*a);//in atoms/m
r_a=r_110/10^3;//in atoms/mm
disp(r_a,"Linear Density per unit length along direction [110] (in atoms/mm) =");
r_111=1/(sqrt(3)*a);//in atoms/m
r_b=r_111/10^3;//in atoms/mm
disp(r_b,"Linear Density per unit length along direction [111] (in atoms/mm) =");
