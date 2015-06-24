//Caption:In a single phase transformer Calculate the efficiency of full load current (a)at unity power factor (b)at a power factor of 0.8 ,also calculate the load at which the maximum efficiency occurs and what is it's value.
//Exam:3.30
clc;
clear;
close;
KVA=50;//Rating of the transformer(in KVA)
V_1=6600;//Primary voltage(in Volt)
V_2=200;//Secondary voltage(in VOlt)
I_1=KVA*1000/6600;//Full load primary current(in Amp)
P_f1=1;//power factor at unity
P_f2=0.8;//Power factor at 0.8
O_p1=KVA*P_f1;//Output at unity power factor(in KW)
P_i=650;//Iron loss(in Watt)
P_i1=P_i/1000;//Iron loss (in KW)
P_c=885;//Copper loss(in Watt)
P_c1=P_c/1000;//Copper loss(in KW)
I_p1=O_p1+P_c1+P_i1;//Input at unity power factor(in KW)
E_f1=(O_p1/I_p1)*100;//Efficiency of the transformer at unity power factor
disp(E_f1,'Efficiency of the transformer at unity power factor(in %)=');
O_p2=KVA*P_f2;//Output at 0.8 power factor(in KW) 
//Maximum efficiency occurs when Copper loss = Iron loss,let the maximum efficiency occcur at x times full load
x=(P_i1/P_c1)^(1/2);
disp(x,'the maximum efficiency occurs at the full load of=');
O_P=x*KVA*P_f2;//Output at maximum efficiency(in KW)
E_F=(O_P/(O_P+P_i1+P_c1))*100;//Maximum Efficiency of the transformer at 0.8 power factor
disp(E_F,'Maximum Efficiency of the transformer(in %)=');