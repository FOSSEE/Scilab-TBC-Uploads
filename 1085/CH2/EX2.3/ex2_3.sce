//Exam:2.3
clc;
clear;
close;
Z_1=1;//atomic number for hydrogen
n_1=1;//first orbit
r_1=0.529;//radius of first orbit of electron for hydrogen 
Z_2=2;//atomic number for helium
n_2=2;//second orbit
k=r_1*Z_1/n_1;
r_2=k*((n_2)^2)/Z_2;//radius of first orbit of electron for helium
disp(r_2,'radius of the second bohr orbit in a singly ionized helium atom(in A)=');