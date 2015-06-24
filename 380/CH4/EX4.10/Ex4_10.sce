//Caption:Find (a) primary winding voltage (b) secondary winding voltage (c) ratio of transformation (d) nominal rating of transformer
//Exa:4.10
clc;
clear;
close;
V_1=2400;//in Volts
V_2=240;//in Volts
S_o=24*1000;//Volt-Ampere
I_1=10;//in Amperes
I_2=100;//in Amperes
//Refer to fig:4.31 (a)
V_1a=V_1+V_2;
V_2a=V_2;
a_T1=V_1a/V_2a;
a_T2=V_2a/V_1a;
a_T3=V_1a/V_1;
a_T4=V_1/V_1a;
S_oa_1=V_1a*I_1;
S_oa_2=V_1a*I_1;
S_oa_3=V_1a*I_2;
S_oa_4=V_1a*I_2;
disp("Refer to fig:4.31a");
disp(V_1a,'(a) primary winding voltage (in Volts)=');
disp(V_2a,'(b) secondary winding voltage (in Volts)=');
disp(a_T1,'(c) ratio of transformation=');
disp(S_oa_1/1000,'(d) nominal rating of transformer (KVA)=');
disp("Refer to fig:4.31b");
disp(V_2a,'(a) primary winding voltage (in Volts)=');
disp(V_1a,'(b) secondary winding voltage (in Volts)=');
disp(a_T2,'(c) ratio of transformation=');
disp(S_oa_2/1000,'(d) nominal rating of transformer (KVA)=');
disp("Refer to fig:4.31c");
disp(V_1a,'(a) primary winding voltage (in Volts)=');
disp(V_1,'(b) secondary winding voltage (in Volts)=');
disp(a_T3,'(c) ratio of transformation=');
disp(S_oa_3/1000,'(d) nominal rating of transformer (KVA)=');
disp("Refer to fig:4.31d");
disp(V_1,'(a) primary winding voltage (in Volts)=');
disp(V_1a,'(b) secondary winding voltage (in Volts)=');
disp(a_T4,'(c) ratio of transformation=');
disp(S_oa_4/1000,'(d) nominal rating of transformer (KVA)=');