clc;
clear all;
M=2.74*1e8;//magnetization per atom in A/m
a=2.66*1e-10;//elementry cube edge
n=2;//Iron in BCC
B=(M*a*a*a)/2;//Am^2 per atom
disp('Am^2',B,'Am^2 per atom=');
//interms of bohr megneton
b=B/(9.27*1e-24);//dipole moment
disp('bohr megnaton/atom',b,'dipole moment is=');
//slight variation in ans than book.. checked in calculator also
