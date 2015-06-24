clc
//ex15.13
V_L_max=240;
V_L=V_L_max*complex(cos(0),sin(0));      //load voltage
R_1=3;
R_2=0.03;
R_c=100*10^3;      //core-loss resistance
tr=10;      //turns ratio(N1/N2)
//leakage reactances
Z_1=%i*6.5;
Z_2=%i*0.07;
Z_m=%i*15*10^3;
P_R=20*10^3;      //rated power
I_2_max=P_R/real(V_L);
PF=0.8;      //power factor
phi=-acos(PF);      //-ve for lagging power
I_2=complex(I_2_max*cos(phi),I_2_max*sin(phi));      //phasor
I_1=I_2/tr;      //primary current
[I_1_max,I_1_phi]=polar(I_1);
V_2=V_L+(R_2+Z_2)*I_2;      //KVL equation
V_1=tr*V_2;
V_s=V_1+(R_1+Z_1)*I_1;      //KVL equation
[V_s_max,V_s_phi]=polar(V_s);
P_loss=((V_s_max^2)/R_c)+((I_1_max^2)*R_1)+((I_2_max^2)*R_2);      //power loss in transformer
P_L=V_L*I_2*PF;      //power to load
P_in=P_L+P_loss;      //input power
P_eff=(1-(P_loss/P_in))*100;
//under no-load condtions
I_1=0;
I_2=0;
V_1=V_s_max;
V_no_load=V_1/tr;
PR=((V_no_load-V_L_max)/V_L_max)*100;
disp(PR,'Percent regulation')
