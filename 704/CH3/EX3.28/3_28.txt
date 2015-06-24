//Caption:Calculate the efficiency of the transformer on Half load and Full load.
//Exam:3.28
clc;
clear;
close;
KVA=100;//rating of the(in KVA)
P_f=0.8;//power factor
O_p=(1/2)*KVA*P_f;//Output at half load(in KW)
P_i=700;//iron loss (in Watt)
P_i1=P_i/1000;//iron loss at half and full load(in KW)
P_c=400;//copper losses (in Watt)
P_c1=((1/2)^2)*P_c/1000;//copper losses at half load condition (in KW)
P_t=P_c1+P_i1;//Total losses in half load condition(in KW)
E_f=(O_p/(O_p+P_t))*100;//Efficiency of the transformer on half load in percentage
disp(E_f,'Efficiency of the transformer on half load (in %)=');
O_P=KVA*P_f;//Output in case of full load(in KW)
P_c2=P_c/1000;//Copper losss at full load condition(in KW)
P_T=P_c2+P_i1;//Total losses in full load condition(in KW)
E_F=(O_P/(O_P+P_T))*100;//Efficiency of the transformer on full load condition in percentage
disp(E_F,'Efficiency of the transformer on full load condition (in %)=');