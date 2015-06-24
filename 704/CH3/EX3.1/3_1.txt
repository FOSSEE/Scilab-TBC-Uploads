//Caption:Calculate the number of turns on both primary and secondary winding in a single phase transformer
//Exam:3.1
clc;
clear;
close;
E_1=500;//primary induced emf(in Volts)
E_2=250;//secondary induced emf(in Volts)
F=50;//supply frequency(in Hz)
B_max=1.2;//maximum flux density(in T)
a=0.009;//cross sectional area(in square meter)
F_x=B_max*a;//maximum value of flux(in Wb)
N_1=ceil(E_1/(4.44*F*F_x));//number of primary turns
disp(N_1,'number of primary turns in transformer=');
N_2=ceil(E_2/(4.44*F*F_x));//number of secondary turns
disp(N_2,'number of secondary turns in transformer=');