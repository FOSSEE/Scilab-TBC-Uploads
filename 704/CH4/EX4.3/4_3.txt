//Caption:Find the secondary no load voltage and primary secondary currents in a 3 phase transformer
//Exam:4.3
clc;
clear;
close;
V_l=11000;//Input voltage(in Volts)
V_1ph=V_l/(3)^(1/2);//Phase voltage
KVA=50*10^(3);//
//KVA=((3)^(1/2))*V_l*I_l
I_1l=KVA/(((3)^(1/2))*V_l);//Line current
I_1ph=I_1l;//Star system value of phase current
disp(I_1ph,'Value of primary phase and line current(in Amp)=');
N_1=1000;//Primary turns
N_2=90;//Secondary turns
V_2ph=(N_2/N_1)*V_1ph;//secondary phase voltage(in Volts)
//V_2ph=V_2l delta system
disp(V_2ph,'Value of secondary phase and line voltage(in Volts)=');
I_2ph=(N_1/N_2)*I_1ph;//secondary phase current(in Amp)
disp(I_2ph,'Value of secondary phase current(in Amp) =');
I_2l=I_2ph*3^(1/2);//secondary line current(in Amp)
disp(I_2l,'Value of secondary line current(in Amp) =');