//Caption:In a single phase transformer Calculate (a)The efficiency at full load, unity power factor. (b)The efficiency at full load, 0.8 lagging power factor. (c)The efficiency at full load, 0.8 leading power factor.
//Exam:3.27
clc;
clear;
close;
P_f1=1;//power factor unity
P_f2=0.8;//power factor 0.8 lagging or leading
KVA=25;//Rating of the transformer(in KVA)
O_p1=KVA*P_f1;//Output at unity power factor(in KW)
P_c=400;//copper losses(in Watt)
P_C=P_c/1000;//copper losses(in KW)
P_i=320;//iron losses(in Watt)
P_I=P_i/1000;//iron losses(in KW)
P_T=P_I+P_C;//total losses(in KW)
I_p1=O_p1+P_T;//Input (in KW)
E_f1=(O_p1/I_p1)*100;//Efficiency of the transformer at full load and unity power factor(in %)
disp(E_f1,'Efficiency of the transformer at full load and unity power factor(in %)=');
O_p2=KVA*P_f2;//output at 0.8 lagging power factor(in KW)
I_p2=O_p2+P_T;//input incase of 0.8 power factor(in KW)
E_f2=(O_p2/I_p2)*100;//Efficiency of the transformer at full load and 0.8 lagging power factor(in %)
disp(E_f2,'Efficiency of the transformer at full load and 0.8 lagging power factor(in %)=');
E_f3=E_f2;//At 0.8 leading power factor. since there is no change in input and output, so efficiency is unchanged
disp(E_f3,'At 0.8 leading power factor. since there is no change in input and output, so efficiency is unchanged(in %)=');