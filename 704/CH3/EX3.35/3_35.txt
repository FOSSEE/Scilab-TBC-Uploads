//Caption:In a transformer find all day efficiency
//Exam:3.35
clc;
clear;
close;
KVA=15;//Rating of the transformer(in KVA)
P_c=0.35;//Full load copper loss (in KW)
P_i=0.25;//iron losss 
P_I=P_i*24;//Iron loss per day
L_1=1/4;//load for 9 hours of full load
L_2=1;//load for 7 hours of full load
L_3=3/4;//load for next 6 hours of full load
P_f1=0.6;//Power factor at L_1 load
P_f2=0.8;//Power factor at L_2 load
P_f3=1;//Power factor at L_3 load
T_1=9;//Time when L_1 working(in hours)
T_2=7;//Time when L_2 working(in hours)
T_3=6;//Time when L_3 working(in hours)
P_c1=((1/4)^2)*P_c;//Copper loss at 1/4 load
P_C1=9*P_c1;//Copper loss for 9 hours at 1/4 load
P_c2=P_c;//Copper loss at full load
P_C2=7*P_c2;//Copper loss for 7 hours at full load
P_c3=((3/4)^2)*P_c;//Copper loss at 3/4 load
P_C3=6*P_c3;//Copper loss for 6 hours at 3/4 load
P_C=P_C1+P_C2+P_C3;//Copper loss per day(in KW)
P_T=P_C+P_I;//Iron loss per day(in KW)
O_P=L_1*KVA*P_f1*T_1+L_2*KVA*P_f2*T_2+L_3*KVA*P_f3*T_3;//Total output per day(in KWh)
I_P=O_P+P_T;//Total input(in KWh)
E_F=(O_P/I_P)*100;//All day efficiency(in %)
disp(E_F,'All day efficiency(in %)=');