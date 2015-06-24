//Caption:Determine the input in Watts & efficiency of the generator
//Exam:2.47
clc;
clear;
close;
O_p=50;//output of a machine (in KW)
O_p1=50*(10)^3;//output (in watts)
L_i=4000;//internal losses(in watts)
I_p=O_p1+L_i;//input(in watts)
disp(I_p,'input(in watts)=');
E=(O_p1/I_p)*100;//efficiency of the generator
disp(E,'efficiency of the generator(in %)=');