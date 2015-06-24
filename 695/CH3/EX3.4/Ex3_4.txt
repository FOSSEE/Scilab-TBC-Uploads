//Caption:Determine the (a)Secondary voltage (b)current flowing through windings (c)max value of flux 
//Exa:3.4
clc;
clear;
close;
f=50;//in Hz
E_1=2500;//in volts
N_1=500;
N_2=100;
P=50*1000;//in watts
E_2=E_1*N_2/N_1;
disp(E_2,'(a)Secondary Voltage (in volts)=');
I_1=P/E_1;
disp(I_1,'(b)Primary current (in amperes)=');
I_2=P/E_2;
disp(I_2,'   Secondary current (in amperes)=');
Phy_max=E_1/(4.44*f*N_1);
disp(Phy_max,'(c)Max value of flux (in Wb)=')