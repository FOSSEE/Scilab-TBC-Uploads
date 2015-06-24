//Exam:3.17
clc;
clear;
close;
N_a1=(1/2)+1+(1/2);//Number of diameters of atom along (110) direction
a=3.61*10^(-7);//lattice constant of copper in mm
L_d1=2^(1/2)*a;//length of the face diagonal in case of (110) direction
p_110=N_a1/L_d1;//linear atomic density along (110) of copper crystal lattice(in atoms/mm)
N_a2=(1/2)+(1/2);//Number of diameters of atom along (111) direction
L_d2=3^(1/2)*a;//length of the face diagonal in case of (111) direction
p_111=N_a2/L_d2;//linear atomic density along (110) of copper crystal lattice(in atoms/mm)
disp(p_110,'linear atomic density along (110) of copper crystal lattice(in atoms/mm)=');
disp(p_111,'linear atomic density along (111) of copper crystal lattice(in atoms/mm)=');