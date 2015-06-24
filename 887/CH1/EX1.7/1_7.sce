clc
//ex1.7
R_1=10;
R_2=5;
V_R_2=15;      //voltage across R_2
a=0.5;
i_y=V_R_2/R_2;      //current across R_2
i_x=i_y*2/3;      //current across R_1, by applying KCL at the top end of the controlled source 
V_x=i_x*R_1;      //ohm's law
V_s=V_x+V_R_2;      //KVL around the periphery of the circuit
disp(V_s,'Source voltage for given circuit in volts')
