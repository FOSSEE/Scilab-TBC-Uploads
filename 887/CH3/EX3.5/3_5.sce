clc
//ex3.5
C_1=1*10^-6;
C_2=1*10^-6;
//Before the switch is closed
V_1=100;
V_2=0;
W_1=(1/2)*C_1*V_1^2;
W_2=0;      //V_2=0
W_t_1=W_1+W_2;      //total energy stored by both the capacitors before switch is closed
q_1=C_1*V_1;
q_2=0;
//After the switch is closed
q_eq=q_1+q_2;      //charge on equivalent capacitance
C_eq=C_1+C_2;      //C_1 and C_2 in parallel
V_eq=q_eq/C_eq;
V_1=V_eq;      //parallel combination
V_2=V_eq;      //parallel combination
W_1=(1/2)*C_1*V_eq^2;
W_2=(1/2)*C_2*V_eq^2;
W_t_2=W_1+W_2;      //total energy stored by both the capacitors after switch is closed
disp(W_t_1*10^3,'Total energy stored by both the capacitors before switch is closed in mJ')      //mJ-milli Joules(10^-3)
disp(W_t_2*10^3,'Total energy stored by both the capacitors after switch is closed in mJ')      //mJ-milli Joules(10^-3)
