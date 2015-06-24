//Exa 10.3
clc;
clear;
close;
//given data
format('v',13);
T=300;// temp of gas mixture in K
D_HN2=18*10^-6;// in m^2/s at 300 K, 1 bar
T1=300;// in K
D_HO2=16*10^-6;// in m^2/s at 273 K, 1 bar
T2=273;// in K
O_2=0.2;
N_2=0.7;
H_2=0.1;
//The diffusivity at the mixture temperature and pressure are calculated as 
// D1/D2 = (T1/T2)^(3/2)*(P2/P1)
D_HO2= (T/T2)^(3/2)*1/4*D_HO2;
D_HN2= (T/T1)^(3/2)*1/4*D_HN2;
//The composition of oxygen and nitrogen on a H2 free basis is 
x_O= O_2/(1-H_2);
x_N= N_2/(1-H_2);

// The effective diffusivity for the gas mixture at given temperature and pressure is
 D= 1/(x_O/D_HO2+x_N/D_HN2);// in m^2/s
 disp(D,"Effective diffusivity in m^2/s")


