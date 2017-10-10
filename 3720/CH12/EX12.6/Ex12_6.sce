// Example 12_6
clc;clear;funcprot(0);
//Given values
T_1=400; // K
P_1=100; // kPa
Ma_1=0.3;// Mach number

// Calculation
//From table A-13.At the initial Mach number of Ma=0.3, we read
// a_1=A1/A*; t_1=T1/T0; p_1=P1/P0;t_2=T1/T0;p_2=P2/P0;
a_1=2.031;
t_1=0.9823;
p_1=0.9395;
// A2=0.8*A1;
//a_2=(A2/A*)=(A2/A1)*(A1/A*);
a_2=0.8*a_1;
//From table A-13,for the value of a_2
t_2=0.9703;
p_2=0.9000;
Ma_2=0.391;
T_2=T_1*(t_2/t_1);// K
P_2=P_1*(p_2/p_1);// kPa
printf('Mach number,Ma_2=%0.3f\n',Ma_2);
printf('Temperature,T_2=%0.0f K\n',T_2);
printf('Pressure,P_2=%0.1f kPa\n',P_2);
