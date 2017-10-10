// Example 32_40
clc;funcprot(0);
//Given data
L_cap=150;// MW
L=[20 60 30];// Load in MW
T=[0 8 16 24];// Time in hours
n_1=0.9;
n_2=2.7;

// Calculation
// Considering the Consumer C_1
E_1=(L(1)*(T(2)-T(1)))+(L(2)*(T(3)-T(2)))+(L(3)*(T(4)-T(3)));// MWh
L_a1=E_1/24;// Average load in MW
L_max1=L(2);// Maximum load in MW
LF_1=L_a1/L_max1;// Load factor
// Considering the Consumer C_1
T=[0 4 12 20 24];// Time in hours
L_4=30;// Load in MW
t_4=4;// Time in hours
L_12=80;// Load in MW
t_12=12;// Time in hours
L_20=20;// Load in MW
t_20=20;// Time in hours
E_2=(L_4*(T(2)-T(1)))+(((L_12*t_12)-(L_4*t_4))/(n_1+1))+(((L_12*t_12)-(L_20*t_20))/(n_2-1))+(L_20*(T(5)-T(4)));
L_a2=E_1/24;// Average load in MW
L_max2=L_12;// Maximum load in MW
LF_2=L_a2/L_max2;// Load factor
E_t=E_1+E_2;// Total energy supplied in MW
L_ap=E_t/24;// Average load on the plant in MW
L_pmax=L_max1+L_max2;// Maximum load in MW
LF_p=L_ap/L_pmax;// Load factor
t=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24];// Time in hours
L_5=(L_4*(t(5)/t(4))^n_1);// MW
L_6=(L_5*(t(6)/t(5))^n_1);// MW
L_7=(L_6*(t(7)/t(6))^n_1);// MW
L_8=(L_7*(t(8)/t(7))^n_1);// MW
L_9=(L_8*(t(9)/t(8))^n_1);// MW
L_10=(L_9*(t(10)/t(9))^n_1);// MW
L_11=(L_10*(t(11)/t(10))^n_1);// MW
L_12=(L_11*(t(12)/t(11))^n_1);// MW
L_12=80;// MW
L_13=(L_12*((t(12)/t(13))^n_2));// MW
L_14=(L_13*(t(13)/t(14))^n_2);// MW
L_15=(L_14*(t(14)/t(15))^n_2);// MW
L_16=(L_15*(t(15)/t(16))^n_2);// MW
L_17=(L_16*(t(16)/t(17))^n_2);// MW
L_18=(L_17*(t(17)/t(18))^n_2);// MW
L_19=(L_18*(t(18)/t(19))^n_2);// MW
L_20=(L_19*(t(19)/t(20))^n_2);// MW
P_8=L(1)+L_8;// MW
P_6=L(2)+L_16;// MW
printf('\nPower supplied at 8th hour=%0.2f MW \nPower supplied at 16th hour=%0.2f MW',P_8,P_6);
