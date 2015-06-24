//ex9.6
V_DD=24;
V_in=100*10^-3;
R1=440;
R2=5.1*10^3;
R3=100*10^3;
R4=10^3;
R5=100;
R7=15*10^3;
R_L=33;
V_TH_Q1=2;
V_TH_Q2=-2;
I_R1=(V_DD-(-V_DD))/(R1+R2+R3);
V_B=V_DD-I_R1*(R1+R2);    //BASE VOLTAGE
V_E=V_B+0.7;    //EMITTER VOLTAGE
I_E=(V_DD-V_E)/(R4+R5);    //EMITTER CURRENT
V_R6=V_TH_Q1-V_TH_Q2;    //VOLTAGE DROP ACROSS R6
I_R6=I_E;    
R6=V_R6/I_R6;
r_e=25*10^-3/I_E;    //UNBYPASSED EMITTER RESISTANCE
A_v=R7/(R5+r_e);    //VOLTAGE GAIN
V_out=A_v*V_in;
P_L=V_out^2/R_L;
disp(R6,'value of resistance R6 in ohms fot AB operation')
disp(P_L,'power across load in watts')