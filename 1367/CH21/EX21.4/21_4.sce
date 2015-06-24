//Calculate  Activation Energy in Silver diffusion
//Ex:21.4
clc;
clear;
close;
z=8;//ratio of diffusion in silicon at 1350 C and 1100 C
x=log(z);
q=x/(1.35*10^-5);//activation energy for silver diffusion in J/mol
q1=q/1000;//in kJ/mol
disp(q1,"Activation Energy in Silver diffusion (in kJ/mol) = ");