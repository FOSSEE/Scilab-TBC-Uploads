//Find Interplanar Spacing
//Ex:5.5
clc;
clear;
close;
r=1.246;//radius in angstorm
h=2;
k=0;
l=0;
x=sqrt(h^2+k^2+l^2);
a=2*sqrt(2)*r;//in angstorm
d_200=a/x;//interplanar spacing in angstorm
disp(d_200,"Interplanar Spacing (200) (in Angstorm) = ");
h1=2;
k1=2;
l1=0;
x1=sqrt(h1^2+k1^2+l1^2);
d_220=a/x1;//interplanar spacing in angstorm
disp(d_220,"Interplanar Spacing (220) (in Angstorm) = ");
h2=1;
k2=1;
l2=1;
x2=sqrt(h2^2+k2^2+l2^2);
d_111=a/x2;//interplanar spacing in angstorm
disp(d_111,"Interplanar Spacing (111) (in Angstorm) = ");