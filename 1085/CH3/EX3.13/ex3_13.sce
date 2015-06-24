//Exam:3.13
clc;
clear;
close;
r=1.245;//radius of nickel (in A)
a=4*r/(2)^(1/2);//Lattice constant(in A)
//Miller indices of plane 200
h_1=2;
k_1=0;
l_1=0;
//Miller indices of plane 111
h_2=1;
k_2=1;
l_2=1;
d_200=a/((h_1^2)+(k_1^2)+(l_1^2))^(1/2);
d_111=a/((h_2^2)+(k_2^2)+(l_2^2))^(1/2);
disp(d_200,'interplaner distance of (200) plane of nickel crystal(in A)=');
disp(d_111,'interplaner distance of (111) plane of nickel crystal(in A)=');