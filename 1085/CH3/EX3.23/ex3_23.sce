//Exam:3.23
clc;
clear;
close;
//bond energy per atom of copper=bond energy per bond*numbers of bond per atom*(1/2)
A=56.4*1000;//
N=6.023*10^23;//avogadro number
n_1=12;//numbers of bond per atom
n_2=3;//bonds broken at the surface
E=A*n_1/(2*N);//Energy of total bonds
E_b=E*(n_2/n_1);//Energy of broken bonds on surface
disp(E_b,'E_b');
n_a=1.77*10^19;//no. of atoms on {111} planes in copper(in m^-2)
E_c=n_a*E_b;//Surface energy (enthalpy) of copper
disp(E_c,'Surface energy (enthalpy) of copper(in J/m^2)=');