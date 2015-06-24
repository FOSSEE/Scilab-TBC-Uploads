clc
//ex16.2
B=1;      //magnetic flux density
l=0.3;
V_T=2;
R_A=0.05;
//CASE a
//bar is stationary at t=0
u_ini=0;      //initial velocity of bar is 0
e_A=B*l*u_ini;      //induced voltage
i_A_ini=(V_T-e_A)/R_A;      //initial current
F_ini=B*l*i_A_ini;      //initial force on the bar
//steady state condition with no-load e_A=B*l*u=V_T
u=V_T/(B*l);      //from steady state condition with no-load
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp('CASE a:')
disp(i_A_ini,'initial current in amperes')
disp(F_ini,'initial force on the bar in newtons')
disp(u,'steady-state final speed in m/s')
//CASE b
F_load=4;      //mechanical load
//steady state condition F=B*l*i_A=F_load
i_A=F_load/(B*l);      //from steady state condition
e_A=V_T-R_A*i_A;      //induced voltage
u=e_A/(B*l);      //steady-state speed
P_m=F_load*u;      //mechanical power
P_t=V_T*i_A;      //power taken from battery
P_R=i_A^2*R_A;      //power dissipated in the resistance
eff=P_m*100/P_t;      //efficiency
disp('CASE b:')
disp(u,'steady-state speed in m/s')
disp(P_t,'power delivered by V_t in watts')
disp(P_m,'power delivered to mechanical load in watts')
disp(P_R,'power lost to heat in the resistance in watts')
disp(eff,'effciency of converting electrical power to mechanical power')
//CASE c
//with the pulling force acting to the right, machine operates as a generator
F_pull=2;      //pulling force
//steady-state condition F=B*l*i_A=F_pull
i_A=F_pull/(B*l);      //from steady-state condition
e_A=V_T+R_A*i_A;      //induced voltage
u=e_A/(B*l);      //steady-state speed
P_m=F_pull*u;      //mechanical power
P_t=V_T*i_A;      //power taken by battery
P_R=i_A^2*R_A;      //power dissipated in the resistance
eff=P_t*100/P_m;      //efficiency
disp('CASE c:')
disp(u,'steady-state speed in m/s')
disp(P_m,'power taken from mechanical source in watts')
disp(P_t,'power delivered to the battery in watts')
disp(P_R,'power lost to heat in the resistance')
disp(eff,'efficiency of converting mechanical power to electrical power')
