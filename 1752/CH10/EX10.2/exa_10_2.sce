//Exa 10.2
clc;
clear;
close;
//given data
format('v',13);
T=25;// in degree C
T=T+273;// in K
P=1;
V1=12;//Molecular volume of H2 in cm^3/gm mole
V2=30;//Molecular volume of Air in cm^3/gm mole
M1=2;// Molecular weight of H2
M2=29;// Molecular weight of Air
//The diffusion coefficient for gases in terms of molecular volumes may be express as
D_AB= .0043*T^(3/2)/(P*(V1^(1/3)+V2^(1/3)))*(1/M1+1/M2)^(1/2);
disp(D_AB,"The diffusion coefficient for gases in terms of molecular volumes in cm^2/sec");
