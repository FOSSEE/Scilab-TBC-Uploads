//Caption:In a transformer calculate Power output and power transformed and power conducted
//Exam:3.39
clc;
clear;
close;
KVA=25;
V_s=2200;//Source voltage
V_1=2200;//Voltage in first winding
V_2=220;//Voltage in second winding
I_1=KVA*1000/V_1;//Current rating of 2200 V winding
I_2=KVA*1000/V_2;//Current rating of 220 V winding
V_o=V_1+V_2;//Output voltage
I_l=I_1+I_2;//Input line current
I_o=I_2;//Output current of auto transformer
KVA_r=V_o*I_2/1000;//KVA rating
P_f1=0.8;//
P_o=KVA*P_f1;//Power output at full load and 0.8 power factor
KVA_t=V_1*I_1/1000;//KVA transformed 
disp(KVA_t,'KVA transformed(in KVA)=');
P_t=KVA_t*P_f1;//Power transformed(in KW)
disp(P_t,'Power transformed(in KW)=');
KVA_c=V_s*I_o/1000;//KVA conducted(in KVA)
P_c=KVA_c*P_f1;//Power conducted(in KW)
disp(P_c,'Power conducted(in KW)=');
//E_f=Output/(Output+Losses)
//Losses=((1/E_f)-1)*Output
E_f=0.9;//Efficiency of the two winding transformer
P_f2=0.85;//New power factor of the two einding transformer
O_p1=KVA_t*1000*P_f2;//Output of the two winding transformer
L=((1/E_f)-1)*O_p1;//losses in a 2-winding transformer
//Losses in auto transformer=losses in 2-winding transformer
O_P=KVA_r*1000*P_f2;//output of the auto transformer
E_F=(O_P/(O_P+L))*100;//Efficiency of the auto transformer(in %)
disp(E_F,'Efficiency of the auto transformer(in %)=');