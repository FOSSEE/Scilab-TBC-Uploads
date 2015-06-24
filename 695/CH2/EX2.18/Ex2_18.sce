//Caption:Find the (a)current supplied by each generator (b)output voltage (c) output KW of each machine
//Exa:2.18
clc;
clear;
close;
V_t1=280;//terminal voltage of generator-1 in volts
V_nl1=240;//no-load voltage of generator-1 in volts
V_t2=300;//terminal voltage of generator-2 in volts
V_nl2=240;//no-load voltage of generator-2 in volts
I_s1=40;//supply current to generator-1 in amperes
I_s2=50;//supply current to generator-2 in amperes
V_d1=V_t1-V_nl1;//voltage drop for generator-1 in volts
V_d2=V_t2-V_nl2;//voltage drop for generator-2 in volts
V_d1_pa=V_d1/I_s1;//voltage drop per ampere for generator-1 in volts/ampere
V_d2_pa=V_d2/I_s2;//voltage drop per ampere for generator-2 in volts/ampere
I_2=(20+60)/(V_d1_pa+V_d2_pa);//in amperes
I_1=60-I_2;//in amperes
disp(I_1,'(a) Current supplied by generator-1(in amperes)=');
disp(I_2,'    Current supplied by generator-2(in amperes)=');
V_1=V_t1-(V_d1_pa*I_1);//in volts
V_2=V_t2-(V_d2_pa*I_2);//in volts
disp(V_1,'(b) Output voltage of generator-1(in volts)=');
disp(V_2,'(b) Output voltage of generator-2(in volts)=');
P_1=V_1*I_1/1000;//in kilo watts
P_2=V_2*I_2/1000;//in kilo watts
disp(P_1,'(c) Output KW of generator-1(in Kilo watts)=');
disp(P_2,'(c) Output KW of generator-2(in Kilo watts)=');