clc
//ex2.2
V_s=90;      //source voltage
R_1=10;
R_2=30;
R_3=60;
R_eq_1=1/((1/R_2)+(1/R_3));      //R_2 and R_3 in parallel
R_eq=R_1+R_eq_1;      //R_1 and R_eq_1 in series
i_1=V_s/R_eq;      //ohm's law
//i_1 flows clockwise through V_s,R_1 and R_eq_1
V_2=R_eq_1*i_1;      //voltage across R_eq_1
//As R_eq_1 is equivalent of parallel combination of R_2 and R_3, V_2 appears across both of them
i_2=V_2/R_2;      //ohm's law
i_3=V_2/R_3;      //ohm's law
//we can verify KCL, i_1=i_2+i_3
V_1=i_1*R_1;      //ohm's law
//we can verify KVL, V_s=V_1+V_2
P_s=-V_s*i_1;      //source power(-ve sign as V_s and i_1 have references opposite to passive configuration)
P_1=i_1^2*R_1;      //power for R_1
P_2=V_2^2/R_2;      //power for R_2
P_3=V_2^2/R_3;      //power for R_3
disp('FOR SOURCE')
disp(i_1,'current in amperes')
disp(P_s,'power in watts')
disp('FOR R1')
disp(i_1,'current in amperes')
disp(V_1,'voltage in volts')
disp(P_1,'power in watts')
disp('FOR R2')
disp(i_2,'current in amperes')
disp(V_2,'voltage in volts')
disp(P_2,'power in watts')
disp('FOR R3')
disp(i_3,'current in amperes')
disp(V_2,'voltage in volts')
disp(P_3,'power in watts')
//we may verify that P_s+P_1+P_2+P_3=0
