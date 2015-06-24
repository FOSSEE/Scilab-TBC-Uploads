//Caption:In a single phase transformer Calculate the efficiency at full load unity power factor and At half full load 0.8 power factor lag also determine the load for maximum efficiency
//Exam:3.29
clc;
clear;
close;
KVA=25;//Rating of the transformer(in KVA)
P_c=400;//Full load copper loss(in Watt)
P_c1=P_c/1000;//Full load copper loss(in KW)
P_i=350;//Iron loss(in Watt)
P_i1=P_i/1000;//Iron loss (in KW)
P_f=1;//Power factor unity
P_f1=0.8;//Power factor 0.8 lagging
O_p1=KVA*P_f;//Output at full load and unity power factor(in KW)
P_t1=P_c1+P_i1;//Total losses at full load and unity power factor(in KW)
I_p1=O_p1+P_t1;//Input at full load and unity power factor(in KW)
E_f1=(O_p1/I_p1)*100;//Efficiency of the transformer at full load and unity power factor(in KW)
disp(E_f1,'Efficiency of the transformer at full load and unity power factor(in KW)=');
O_p2=(1/2)*KVA*P_f1;//Output At half full load, 0.8 power factor lag.(in KW)
P_c2=((1/2)^2)*P_c1;//Copper loss At half full load, 0.8 power factor lag.(in KW)
P_t2=P_c2+P_i1;//Total loss At half full load, 0.8 power factor lag.(in KW)
I_p2=O_p2+P_t2;//Input At half full load, 0.8 power factor lag.(in KW)
E_f2=(O_p2/I_p2)*100;//Efficiency of the transformer at half full load and 0.8 lagging power factor(in KW)
disp(E_f2,'Efficiency of the transformer at half full load and 0.8 lagging power factor(in KW)=');
//Maximum efficiency occurs when Copper loss = Iron loss,let the maximum efficiency occcur at x times full load
x=(P_i/P_c)^(1/2);
L=x*KVA;//load in KVA corresponding to maximum efficiency
disp(L,'the load for maximum efficiency(in KVA)=');