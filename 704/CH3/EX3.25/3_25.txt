//Caption:In a single phase transformer Calculate the efficiency at unity power at Full load and Half load.
//Exam:3.25
clc;
clear;
close;
P_c=400;//Full load copper loss(in Watts)
P_C=P_c/1000;//Full load copper loss(in KW)
P_i=350;//Full load iron loss(in Watts)
P_I=P_i/1000;//Full load iron loss(in KW)
P_f=1;//Power factor
KVA=25;//Rating of the transformer
O_p=KVA*P_f;//Output at full load condition(in KW)
L_1=P_C+P_I;//Losses at full load condition(in KW)
I_p=O_p+L_1;//Input at full load condition(in KW)
E_fL=(O_p/I_p)*100;//Efficiency in full load condition
disp(E_fL,'Efficiency of the tranformer at full load condition(in %)=');
//At half load condition
O_P=(1/2)*KVA*P_f;//Output of the transformer at half load condition
L_2=((1/2)^2)*P_C+P_I;//Losses at half load condition(in KW)
I_P=O_P+L_2;//Input at half load condition
E_hL=(O_P/I_P)*100;//Efficiency of the transformer at half load condition(in %)
disp(E_hL,'Efficiency of the transformer at half load condition(in %)=');