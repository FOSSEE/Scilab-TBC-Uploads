//Caption:In a single phase transformer Calculate the iron losses and the full load copper losses.
//Exam:3.32
clc;
clear;
close;
KVA=400;//Rating of the transformer(in KVA)
E_f1=0.9877;//Transformer efficiency when delivering full load at 0.8 power factor
P_f1=0.8;//power factor at full load
P_f2=1;//power factor at half load
O_p1=KVA*P_f1;//Output on full load when power factor is 0.8(in KW)
I_p1=(O_p1/E_f1);//Input on full load when power factor is 0.8(in KW)
P_t1=I_p1-O_p1;//Total losses on full load when power factor is 0.8(in KW)
O_p2=(1/2)*KVA*P_f2;//Output at half load when power factor is 1
E_f2=0.9913;//Transformer efficiency when delivering half load at 1 power factor
I_p2=O_p2/E_f2;//Input at half load when power factor is 1
P_t2=I_p2-O_p2//Total losses at half load when power factor is 1
//P_t1=P_c+P_i
//P_t2=(1/4)P_c+P_i
P_c=(4/3)*(P_t1-P_t2);//Full load and copper losses
P_i=(1/3)*(4*P_t2-P_t1);//iron losses
disp(P_c,'full load and copper losses(in KW)=');
disp(P_i,'iron loss(in KW)=');