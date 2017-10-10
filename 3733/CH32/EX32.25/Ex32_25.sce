// Example 32_25
clc;funcprot(0);
//Given data
T_1=[0,4];// Time in hours
T_2=[4,6];// Time in hours
T_3=[6,8];// Time in hours
T_4=[8,12];// Time in hours
T_5=[12,13];// Time in hours
T_6=[13,17];// Time in hours
T_7=[17,19];// Time in hours
T_8=[19,20];// Time in hours
T_9=[20,24];// Time in hours
L_a=[50 150 300 50 50 50 300 200 100];// Group A(Load in kW)
L_b=[20 20 100 600 100 600 50 20 20];// Group B(Load in kW)
// Load factor=[1-0.8 0.8-0.6 0.6-0.4 0.4-0.2  below0.2]
C=[1 1.6 2.4 5 8];// Charge in Rs.per kW-hr
MD_A=300;// kW
MD_B=600;// kW

// Calculation
E_tA=L_a(1)*(T_1(2)-T_1(1))+L_a(2)*(T_2(2)-T_2(1))+L_a(3)*(T_3(2)-T_3(1))+L_a(4)*(T_4(2)-T_4(1))+L_a(5)*(T_5(2)-T_5(1))+L_a(6)*(T_6(2)-T_6(1))+L_a(7)*(T_7(2)-T_7(1))+L_a(8)*(T_8(2)-T_8(1))+L_a(9)*(T_9(2)-T_9(1));// Total energy consumed by group A in kW-hrs
F_lA=(E_tA/24)*(1/MD_A);// Load factor of group A
R_A=E_tA*C(3);// Revenue earned by from group A
E_tB=L_b(1)*(T_1(2)-T_1(1))+L_b(2)*(T_2(2)-T_2(1))+L_b(3)*(T_3(2)-T_3(1))+L_b(4)*(T_4(2)-T_4(1))+L_b(5)*(T_5(2)-T_5(1))+L_b(6)*(T_6(2)-T_6(1))+L_b(7)*(T_7(2)-T_7(1))+L_b(8)*(T_8(2)-T_8(1))+L_b(9)*(T_9(2)-T_9(1));// Total energy consumed by group A in kW-hrs
F_lB=(E_tB/24)*(1/MD_B);// Load factor of group A
R_B=E_tB*C(4);// Revenue earned by from group A
Tr=R_A+R_B;// Total revenue earned per day from both groups in Rs./day
printf('\nTotal revenue earned per day from both groups=Rs.%0.0f/day',Tr);
// The answer provided in the textbook is wrong
