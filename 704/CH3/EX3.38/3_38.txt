//Caption:In an auto transformer determine current in different section and KVA output and power transferred inductively and power transferred conductively from input to output and saving in copper
//Exam:3.38
clc;
clear;
close;
KVA=10;
V_1=2400;//Voltage in first winding
V_2=240;//Voltage in second winding
I_1=KVA*1000/V_1;//Current rating of 2400 Volts winding
I_2=KVA*1000/V_2;//Current rating of 240 Volts winding
I_l=I_1+I_2;//Total load current
disp(I_1,'Current rating of 2400 Volts winding(in Amp)=');
disp(I_2,'Current rating of 240 Volts winding(in Amp)=');
disp(I_l,'Total load current(in Amp)=');
KVA_r=V_1*I_l/1000;//KVA output rating
disp(KVA_r,'KVA output rating(in KVA)=');
P_i=V_1*I_1;//power transferred inductively
P_c=V_1*I_2;//power transferred conductively
disp(P_i,'power transferred inductively(in VA)=');
disp(P_c,'power transferred conductively(in VA)=');
N_1=2640;//Number Primary winding in case of two winding transformer
N_2=2400;//Number Secondary winding in case of two winding transformer
K=N_1/N_2;//Transformer ratio
Saving=(1/K)*100;//Saving in copper
disp(Saving,'Saving in copper(in %)=');