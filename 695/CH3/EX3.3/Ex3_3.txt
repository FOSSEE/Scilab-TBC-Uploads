//Caption:Determine the number of turns of primary and secondary windings 
//Exa:3.3
clc;
clear;
close;
Phy_max=7.82*10^-3;//in webers
f=50;//in Hz
E_1=5000;//in volts
E_2=500;//in volts
N_1=int(E_1/(4.44*f*Phy_max));
disp(N_1,'Number of turns in primary winding=');
N_2=int(E_2*N_1/E_1);
disp(N_2,'Number of turns in secondary winding=');