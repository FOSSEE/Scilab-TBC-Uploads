//Chapter 13
//Page 357
//Example 13.3
//selection
//This problem contains many assumptions and values are taken from Figure 13.7 in page 348 after intial calculations,it is done in order to select equipment of the available rated value in the market to meet the required conditions.So only the required calculations are shown and final answer after the required changes are displayed.
clear;clc;
//Given
V = 13.8e3;
Z_tr = %i * 5;
Z_tr_eq = Z_tr / 2;//since two reactances of equal value are in parallel
Z1 = %i*9.6;Z2 = %i*6.4;Z3 = %i*8.0;Z4 = %i*12.8;
m = sqrt(3) / 2;//to obtain line-to-line fault from a three-phase fault current
If_b5_max = (V/sqrt(3)) / (Z_tr_eq + Z1 + Z2 + Z3 + Z4);
If_b5_min = (V/sqrt(3)) * m / (Z_tr + Z1 + Z2 + Z3 + Z4);
If_b4_max = (V/sqrt(3)) / (Z_tr_eq + Z1 + Z2 + Z3);
If_b4_min = (V/sqrt(3)) * m / (Z_tr + Z1 + Z2 + Z3);
If_b3_max = (V/sqrt(3)) / (Z_tr_eq + Z1 + Z2);
If_b3_min = (V/sqrt(3)) * m / (Z_tr + Z1 + Z2);
If_b2_max = (V/sqrt(3)) / (Z_tr_eq + Z1);
If_b2_min = (V/sqrt(3)) * m / (Z_tr + Z1);
If_b1_max = (V/sqrt(3)) / (Z_tr_eq);
If_b1_min = (V/sqrt(3)) * m / (Z_tr);
//Settings for relay R4
R4_I_1_p = If_b5_min /3;disp(abs(R4_I_1_p),'One third of minimum fault current in A')
R4_I_p = R4_I_1_p * 5 /55;disp(abs(R4_I_p),'For CT ratio 50/5 resulting relay current in A will be')
disp('Settings for relay R4')
disp('CT ratio = 50:5')
disp('Pick up setting in A = 5')
disp('Time-dial setting = 1/2')
//Settings for relay R3
R3_I_p = If_b4_max * 5 / 50;disp(abs(R3_I_p),'The relay current of both R3 and R4 for higest fault current seen by R4')
R4_t_op = 0.135;disp(R4_t_op,'Operating time for R4 with time dial setting 1/2 in sec is')
t=0.3;
R3_t_op = R4_t_op + t;disp(R3_t_op,'Required operating time of relay R3')
disp('Settings for relay R3')
disp('CT ratio = 50:5')
disp('Pick up setting in A = 5')
disp('Time-dial setting = 2')
//Settings for relay R2
R2_I_p = (1/3) * If_b4_min * (5/100);disp(abs(R2_I_p),'Pickup setting in A')
R3_I_1_p = If_b3_max * (5/50) * (1/5);disp(abs(R3_I_1_p),'Reatio of relay current to picup setting in A for max fault current through R3')
R3_t_op = 0.31;
R2_t_op = R3_t_op + t;disp(R2_t_op,'Operating time of R2 in sec')
R2_I_1_p = If_b3_max * (5/100) * (1/4);disp(abs(R2_I_1_p),'For backing up R3 the ratio of relay current to pickup setting of R2 in A')
disp('Settings for relay R2')
disp('CT ratio = 100:5')
disp('Pick up setting in A = 4')
disp('Time-dial setting = 2.6')
//Settings for relay R1
R1_I_p = If_b3_min * (1/3) * (5/100);
//taking tap as 5.0
R2_1_I_1_op = If_b2_max * (5/50) * (1/5);
//Operating time will come to 0.33s
R1_t_op = 0.33+t;
R1_1_I_1_op = If_b2_max * (5/100) * (1/5);
disp('Settings for relay R1')
disp('CT ratio = 100:5')
disp('Pick up setting in A = 5')
disp('Time-dial setting = 2.9')