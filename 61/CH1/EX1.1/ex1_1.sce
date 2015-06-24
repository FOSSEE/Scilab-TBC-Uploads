//Ex-1.1(a)
V_bias=10;
R_limit=1000;
r_d =10;
//Voltages in Volts, Currents in Amperes, Resistances in Ohms
//IDEAL MODEL
disp('IDEAL MODEL')
V_f=0;
I_f=V_bias/R_limit;
V_R_limit=I_f*R_limit;
disp(V_f,'forward voltage in volts');
disp(I_f,'forward current in amperes');
disp(V_R_limit,'voltage across limiting resistor in volts');
//PRACTICAL MODEL
disp('PRACTICAL MODEL');
V_f=0.7;
I_f=(V_bias-V_f)/R_limit;
V_R_limit=I_f*R_limit;
disp(V_f,'forward voltage in volts');
disp(I_f,'forward current in amperes');
disp(V_R_limit,'voltage across limiting resistor in volts');
//COMPLETE MODEL
disp('COMPLETE MODEL')
I_f=(V_bias-0.7)/(R_limit+r_d');
V_f=0.7+I_f*r_d';
V_R_limit=I_f*R_limit;
disp(V_f,'forward voltage in volts');
disp(I_f,'forward current in amperes');
disp(V_R_limit,'voltage across limiting resistor in volts');
//Ex1.1(b)
V_bias=5;
I_R=1*10^-6;
//IDEAL MODEL
disp('IDEAL MODEL');
I_r=0;
V_R=V_bias;
V_R_limit=I_r*R_limit;
disp(I_r,'reverse current in amperes')
disp(V_R,'reverse voltage in volts')
disp(V_R_limit,'voltage across limiting resistor in volts')
//PRACTICAL MODEL
disp('PRACTICAL MODEL')
I_r=0;
V_R=V_bias;
V_R_limit=I_r*R_limit;
disp(I_r,'reverse current in amperes')
disp(V_R,'reverse voltage in volts')
disp(V_R_limit,'voltage across limiting resistor in volts')
//COMPLETE MODEL
disp('COMPLETE MODEL')
I_r=I_R;
V_R_limit=I_r*R_limit;
V_R=V_bias-V_R_limit;
disp(I_r,'reverse current in amperes')
disp(V_R,'reverse voltage in volts')
disp(V_R_limit,'voltage across limiting resistor in volts')