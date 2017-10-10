// Example 32_1
clc;funcprot(0);
//Given data
T_1=[0,5];// Time in hours
T_2=[5,6];// Time in hours
T_3=[6,9];// Time in hours
T_4=[9,18];// Time in hours
T_5=[18,21];// Time in hours
T_6=[21,24];// Time in hours
L=[2,6,20,0,12,8];// Load in kW
L_p=20;// Peak load in kW

//Calculation
E_t=(L(1)*(T_1(2)-T_1(1)))+(L(2)*(T_2(2)-T_2(1)))+(L(3)*(T_3(2)-T_3(1)))+(L(4)*(T_4(2)-T_4(1)))+(L(5)*(T_5(2)-T_5(1)))+(L(6)*(T_6(2)-T_6(1)));//Total energy consumed during 24 hours in kW-hrs.
L_a=E_t/24;// Average load in kW
F_l=L_a/L_p;// Load factor 
T=[0 5 5 6 6 9 9 18 18 21 21 24 24];//Time in hours for load curve
L=[2 2 6 6 20 20 0 0 12 12 8 8 22];// Load in kW for load curve
xlabel('TIME IN HOURS');
ylabel('LOAD IN kW');
title('Fig.32.1.Load curve');
plot(T,L,'b');
x=[0 24];// Time in hours
y=[L_a L_a];// Load in kW
plot(x,y,'r-.');
legend('LOAD CURVE','AVERAGE LOAD');
printf('\nLoad factor=%0.3f \nTotal energy consumed during 24 hours=%0.0f kW-hrs',F_l,E_t);
// The answer vary due to round off error

