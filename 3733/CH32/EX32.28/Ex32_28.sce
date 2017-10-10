// Example 32_28
clc;funcprot(0);
//Given data
T=[0 6 10 12 16 20 22 24];// Time in hours
L=[30 100 110 60 120 100 60];// Load in MW

// Calculation
t=[0 6 6 10 10 12 12 16 16 20 20 22 22 24];// Time in hours for load curve
l=[30 30 100 100 110 110 60 60 120 120 100 100 60 60];// Load in MW for load curve
subplot(2,1,1);
xlabel('Time in hrs');
ylabel('Load(MW)');
plot(t',l','b');
xtitle('(a)Load curve');
L_a=((L(1)*(T(2)-T(1)))+(L(2)*(T(3)-T(2)))+(L(3)*(T(4)-T(3)))+(L(4)*(T(5)-T(4)))+(L(5)*(T(6)-T(5)))+(L(6)*(T(7)-T(6)))+(L(7)*(T(8)-T(7))))/24;// Averge load in MW
L_max=L(5);// Maximum load in MW
LF=L_a/L_max;// Load factor
T_p1=((T(6)-T(5))/24)*100;// % Time
T_p2=T_p1+((T(4)-T(3))/24)*100;// % Time
T_p3=T_p2+(((T(3)-T(2))+(T(7)-T(6)))/24)*100;// % Time
T_p4=T_p3+(((T(8)-T(7))+(T(5)-T(4)))/24)*100;// % Time
T_p5=T_p4+((T(2)-T(1))/24)*100;// % Time
T_p=[0 0 T_p1 T_p1 T_p2 T_p2 T_p3 T_p3 T_p4 T_p4 T_p5];// % Time for load duration curve
L=[0 120 120 110 110 100 100 60 60 30 30];// Load in MW for load duration curve
L_avg=[L_a L_a L_a L_a L_a L_a L_a L_a L_a L_a L_a];//  Averge load in MW for plot 
subplot(2,1,2);
xlabel('% Time');
ylabel('Load(MW)');
plot(T_p',L','b',T_p',L_avg','r');
xtitle('(b)Load duration curve');
legend('Load curve','AL');
printf('\nAverage load=%0.2f MW \nLoad factor=%0.3f',L_a,LF);
