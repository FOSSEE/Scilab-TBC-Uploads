//Exam:4.1
clc;
clear;
close;
r_o=2.8//interatomic distance in Å
R_o=2.8*10^(-10);//interatomic distance in m
u_o=8;//released energy in eV
e=1.6*10^(-19);//charge of electron in C
U_o=8*e//released energy in Joule
A=(5/4)*U_o*(R_o^2);//proportionality constant for attraction in J-m2
B=A*(R_o^8)/5;//proportionality constant for repulsion in J-m2
r_c=(110*B/(6*A))^(1/8);//interatomic distance at which the dissociation occurs in m
F=-(2/r_c^3)*(A-5*B/(r_c^8));//the force required to dissociate the molecule in N
disp(A,'proportionality constant for attraction (in J-m2)=');
disp(B,'proportionality constant for repulsion (in J-m2)=');
disp(r_c,'interatomic distance at which the dissociation occurs (in m)=');
disp(F,'the force required to dissociate the molecule (in N)=');