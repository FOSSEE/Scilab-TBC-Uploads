//ex3.7
V_IN=24;
V_Z=15;
I_ZK=0.25*10^-3;
I_ZT=17*10^-3;
Z_ZT=14;
P_D_max=1;
//output voltage at I_ZK
V_out_1=V_Z-(I_ZT-I_ZK)*Z_ZT;
disp(V_out_1,'output voltage in volts at I_ZK')
I_ZM=P_D_max/V_Z;
//output voltage at I_ZM
V_out_2=V_Z+(I_ZM-I_ZT)*Z_ZT;
disp(V_out_2,'output voltage in volts a I_ZM')
R=(V_IN-V_out_2)/I_ZM;
disp(R,'value of R in ohms for maximum zener current, no load')
disp('closest practical value is 130 ohms')
R=130;
//for minimum load resistance(max load current) zener current is minimum (I_ZK)
I_T=(V_IN-V_out_1)/R;
I_L=I_T-I_ZK;
R_L_min=V_out_1/I_L;
disp(R_L_min,'minimum load resistance in ohms')