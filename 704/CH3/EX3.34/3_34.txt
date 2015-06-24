//Caption:In a transformer find all day efficiency
//Exam:3.34
clc;
clear;
close;
KVA=1500;//Rating of the transformer(in KVA)
P_C=4.5;//copper loss for maximum efficiency(in KW)
P_I=3.2;//iron losss at maximum efficiency copper loss=iron loss
L_1=1200;//load for 6 hours (in KW)
L_2=900;//load for next 10 hours (in KW)
L_3=300;//load for next 4 hours (in KW)
L_4=0;//load for next 4 hours (in KW)
P_f1=0.8;//Power factor at L_1 load
P_f2=0.75;//Power factor at L_2 load
P_f3=0.8;//Power factor at L_3 load
P_f4=0;//Power factor at L_4 load
T_1=6;//Number of hours when L_1 working(in hours)
T_2=10;//Number of hours when L_2 working(in hours)
T_3=4;//Number of hours when L_3 working(in hours)
T_4=4;//Number of hours when L_4 working(in hours)
O_p1=L_1*T_1+L_2*T_2+L_3*T_3;//All day output(in KWh)
P_i1=P_I*24;//Iron losses for 24 hours(in KWh)
P_c1=T_1*P_C*((L_1/P_f1)/KVA)^2+T_2*P_C*((L_2/P_f2)/KVA)^2+T_3*P_C*((L_3/P_f3)/KVA)^2;//Copper loss for 24 hours(in KWh)
P_t=P_c1+P_i1;//Total losses of transformer for 24 hours(in KWh)
I_p1=O_p1+P_t;//All day input(in KWh)
E_f1=(O_p1/I_p1)*100;//All day efficiency of transformer
disp((E_f1),'All day efficiency of transformer(in %)=');