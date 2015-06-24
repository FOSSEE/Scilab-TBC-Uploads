//Caption:Calculate (a)Primary and secondary currents on full load (b)the maximum value of flux (c)the number of primary turns.
//Exam:3.9
clc;
clear;
close;
O_p=200;//Rated output (in KVA)
V_1=3300;//Primary voltage (in Volts)
V_2=240;//Secondary voltage (in Volts)
N_2=100;//Secondary turns
f=50;//supply frequency(in Hz)
I_1=O_p*1000/V_1;//Primary current(in Amp)
disp(I_1,'Primary current on full load (in Amp)=');
I_2=O_p*1000/V_2;//secondary current(in Amp)
disp(I_2,'secondary current on full load (in Amp)=');
F_x=V_2/(4.44*f*N_2);//Maximum value of flux(in Wb)
disp(F_x,'Maximum value of flux(in Wb)=');
N_1=N_2*(V_1/V_2);//Primary turns
disp(N_1,'Primary turns=');