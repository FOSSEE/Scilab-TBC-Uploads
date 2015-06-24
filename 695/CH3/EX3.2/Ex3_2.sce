//Caption:Determine the (a)number of turns of primary and secondary windings (b)cross section area of the core
//Exa:3.2
clc;
clear;
close;
B_max=1.4;//in tesla
f=50;//in Hz
E_1=660;//in volts
E_2=440;//in volts
E_T1=1.1;//in volts
N_1=int(E_1/E_T1);
disp(N_1,'(a)Number of turns in primary winding=');
N_2=int(E_2*N_1/E_1);
disp(N_2,'Number of turns in secondary winding=');
A=E_1/(4.44*f*N_1*B_max);
disp(A,'(b)Cross section area of the core (in m^2)=');