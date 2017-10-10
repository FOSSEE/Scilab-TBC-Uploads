// Example 32_26
clc;funcprot(0);
//Given data
P=25;// The capacity of the plant in MW
T_1=[6,8];// Time in hours(A.M)
T_2=[8,9];// Time in hours(A.M)
T_3=[9,11];// Time in hours(A.M)
T_4=[11,2];// Time in hours(A.M,P.M)
T_5=[2,5];// Time in hours(P.M)
T_6=[5,8];// Time in hours(P.M)
T_7=[8,12];// Time in hours(P.M)
T_8=[12,5];// Time in hours(A.M)
T_9=[5,6];// Time in hours(A.M)
T_g=[0 2 3 5 8 11 14 18 23 24];// Time in hours for load curve(time in 24 hours format for the given problem)
L_g=[800 600 2000 1200 1400 2000 1000 500 600]/100;// Load in MW

// Calculation
T=[0 0 2 2 3 3 5 5 8 8 11 11 14 14 18 18 23 23 24 24];// Time in hours for load curve
L=[0 800 800 600 600 2000 2000 1200 1200 1400 1400 2000 2000 1000 1000 500 500 600 600 2200]/100;// Load in MW
P_b=15;// Base load plant capacity in MW
P_b=[P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b P_b];// Base load plant capacity in MW for plot
subplot(2,1,1);
xlabel('TIME');
ylabel('LOAD IN MW');
xtitle('Fig.32.26(a)');
plot(T',L','b',T',P_b','r-.');
legend('LOAD CURVE','B');
a=gca();
a.x_ticks.labels=["6 A.M","8","10","12 NOON","2","4","6","8","10","12 NIGHT","2","4","6 A.M "];
a.x_ticks.locations=[0;2;4;6;8;10;12;14;16;18;20;22;24];
// From the table
t=[24 19 18 16 12 9 6 5];
for(i=1:8)
    T_p(i)=(t(i)/24)*100;
end
l=[0 0 500 500 600 600 800 800 1000 1000 1200 1200 1400 1400 1600 1600 2000]/100;// Load in MW
T_p=[0 T_p(1) T_p(1) T_p(2) T_p(2) T_p(3) T_p(3) T_p(4) T_p(4) T_p(5) T_p(5) T_p(6) T_p(6) T_p(7) T_p(7) T_p(8) T_p(8)];// Percentage of time 
subplot(2,1,2);
xlabel('PERCENTAGE OF TIME');
ylabel('LOAD IN MW');
xtitle('Fig.32.26(b)');
plot(T_p',l','b');
legend('LOAD DURATION CURVE');
E_t=(L_g(1)*(T_g(2)-T_g(1)))+(L_g(2)*(T_g(3)-T_g(2)))+(L_g(3)*(T_g(4)-T_g(3)))+(L_g(4)*(T_g(5)-T_g(4)))+(L_g(5)*(T_g(6)-T_g(5)))+(L_g(6)*(T_g(7)-T_g(6)))+(L_g(7)*(T_g(8)-T_g(7)))+(L_g(8)*(T_g(9)-T_g(8)))+(L_g(9)*(T_g(10)-T_g(9)));// The total energy generated in MW-hrs
CF=(E_t/(P*24))*100;// Capacity factor in %
// The base load plant(15 MW capacity) works for 100% of the time
// From load curve
P_b=15;// MW
T=[0 2 5 8 11 14 18 23 24];// hours
L=[800 1500 1200 1400 1500 1000 500 600]/100;// MW
P_act1=(L(1)*(T(2)-T(1)))+(L(2)*(T(3)-T(2)))+(L(3)*(T(4)-T(3)))+(L(4)*(T(5)-T(4)))+(L(5)*(T(6)-T(5)))+(L(6)*(T(7)-T(6)))+(L(7)*(T(8)-T(7)))+(L(8)*(T(9)-T(8)));// The actual energy generated by the base load plant from load curve in MW-hrs
LF_b=(P_act1/(P_b*24))*100;// Load factor in %
CF_b=LF_b;// Capacity factor in %
UF_b=LF_b;// Use factor in %
// The load above 15 MW capacity is supplied by a 10 MW capacity peak load plant
P_p=10;// Peak load plant capacity in MW
L_p=5;// Peak load in MW
P_act2=(1*1)+(L_p*5);// (From load curve)The actual energy generated by the peak load plant in MW-hrs
LF_p=(P_act2/(L_p*24))*100;// Load factor in %
CF_p=(P_act2/(P_p*24))*100;// Capacity factor in %
UF_p=(P_act2/(P_p*6))*100;// Use factor in %
printf('\nThe capacity factor of the plant=%0.1f percentage\nFor base load plant:Load factor=%0.1f percentage\n                    Capacity factor=%0.1f percentage\n                    Use factor=%0.1f percentage\nFor peak load plant:Load factor=%0.1f percentage\n                    Capacity factor=%0.2f percentage\n                    Use factor=%0.1f percentage',CF,LF_b,CF_b,UF_b,LF_p,CF_p,UF_p);
// The answer vary due to round off error