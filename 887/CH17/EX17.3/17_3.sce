clc
//ex17.3
V_L=220;
V_s=V_L/sqrt(3);      //phase voltage
I_s=31.87;
P_s=400;      //total stator copper losses
P_r=150;      //total rotoe copper losses
P_rot=500;      //rotational losses
PF=0.75;      //power factor
P_in=3*V_s*I_s*PF;      //input power
P_ag=P_in-P_s;      //air-gap power
P_dev=P_in-P_s-P_r;      //developed power
P_o=P_dev-P_rot;      //output power
eff=P_o*100/P_in;      //efficiency
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(P_ag,'Power crossing the air gap in watts')
disp(P_dev,'developed power in watts')
disp(P_o,'output power in watts')
disp(eff,'effciency percentage')      //this value is given wrong in the textbook
