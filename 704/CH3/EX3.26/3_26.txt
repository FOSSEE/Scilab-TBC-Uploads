//Caption:Calculate the single phase transformer efficiency for 75% of the full load output at power factor unity and 0.8 lagging.
//Exam:3.26
clc;
clear;
close;
P_i=1.5;//Core loss(in KW)
P_c=4.5;//Full load copper loss(in KW)
P_C=((3/4)^2)*P_c;//Copper loss at 75% of full load(in KW)
P_t=P_i+P_C;//Total loss at 75% of full load output(in KW)
KVA=300;//Rating of the transformer(in KVA)
P_f1=1;//power factor value when it is unity
P_f2=0.8;//power factor value when it is 0.8 lagging
O_p1=0.75*KVA*P_f1;//Output at 75% of full load and at unity power factor(in KW)
E_f1=(O_p1/(O_p1+P_t))*100;//Efficiency of the transformer for 75% of full load output at power factor unity(in %)
disp(E_f1,'Efficiency of the transformer for 75% of full load output at power factor unity(in %)=');
O_p2=0.75*KVA*P_f2;//Output at 75% of full load and at 0.8 lagging power factor(in KW)
E_f2=(O_p2/(O_p2+P_t))*100;//Efficiency of the transformer for 75% of full load output at power factor 0.8 lagging(in %)
disp(E_f2,'Efficiency of the transformer for 75% of full load output at power factor 0.8 lagging(in %)=');