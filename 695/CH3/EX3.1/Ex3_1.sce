//Caption:Determine the (a)number of turns of primary and secondary windings (b)emf per turn
//Exa:3.1
clc;
clear;
close;
A=500*10^-4;//in m^2
B_max=1.5;//in tesla
f=50;//in Hz
E_1=5000;//in volts
E_2=500;//in volts
S_f=0.85;//Stacking factor
N_1=int(E_1/(4.44*f*B_max*A*S_f));
disp(N_1,'(a)Number of turns in primary winding=');
N_2=int(E_2*N_1/E_1);
disp(N_2,'Number of turns in secondary winding=');
disp(E_1/N_1,'(b)Emf per turn (in Volts)=');