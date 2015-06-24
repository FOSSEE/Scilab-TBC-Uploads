//Exa 10.1
clc;
clear;
close;
//given data
format('v',13);
P1=4;// in bar
P2=2;// in bar
T=25;// in degree C
Dhp=9*10^-8;// in m^2/s
S=3*10^-3;// in kg mole/m^3 bar
del_x=0.5*10^-3;// thickness in m
//(a) The molar concentration of a gas in terms of solubility
CH1=S*P1;// in kg mole/m^3
CH2=S*P2;// in kg mole/m^3
//(b) Molar diffusion flux of hydrogen through plastic memberence is given by Fick's law of diffision
//N_H= N_h/A = Dhp*(CH1-CH2)/del_x;
N_H= Dhp*(CH1-CH2)/del_x;// in kg mole/s-m^2
disp(N_H,"Molar diffusion flux of hydrogen through the membrane in kg mole/s-m^2");
//Mass_d_Flux= N_H*Molecular_Weight 
Molecular_Weight=2;
Mass_d_Flux= N_H*Molecular_Weight 
disp(Mass_d_Flux,"Molar diffusion flux in kg/s-m^2");
