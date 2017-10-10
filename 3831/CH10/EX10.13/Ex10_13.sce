// Example 10_13
clc;funcprot(0);
// Given data
Q_H=30.0*10^3;// Btu/h
W_in=1.50;// hp
T_0=30.0+459.67;// K
T_H=70.0+459.67;// K

// Calculation
// (a)
COP_act_hp=Q_H/(W_in*2545);// The actual COP of heat pump
n_T=COP_act_hp;// The first law thermal efficiency of the heat pump
// (b)
E_HP=((1-(T_0/T_H))*COP_act_hp)*100;// The second law availability efficiency of the heat pump
T_L=T_0;// °F
COP_Carnot_hp=T_H/(T_H-T_L);// The COP of Carnot heat pump
E_HP=(COP_act_hp/COP_Carnot_hp)*100;// The second law availability efficiency of the heat pump
printf("\n(a)The first law thermal efficiency of the heat pump,n_T=%1.2f \n(b)The second law availability efficiency of the heat pump,E_HP=%2.1f percentage",n_T,E_HP);
