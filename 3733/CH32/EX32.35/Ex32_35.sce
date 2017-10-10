// Example 32_35
clc;funcprot(0);
//Given data
L_cap=1500;// MW
// n=0.43*(L)^0.95;(given)
T=[0 4 8 12 16 20 24];// Time in hours
C_1=[200 600 1000 400 200 100];// Load in MW
C_2=[800 400 200 200 600 400];// Load in MW
C_t=[1000 1000 1200 600 800 500];// Load in MW

// Calculation
E=(C_1(1)*(T(2)-T(1)))+(C_1(2)*(T(3)-T(2)))+(C_1(3)*(T(4)-T(3)))+(C_1(4)*(T(5)-T(4)))+(C_1(5)*(T(6)-T(5)))+(C_1(6)*(T(7)-T(6)));// Total energy consumed a day in MWh
L_a1=E/24;// MW
L_max1=1000;// MW
LF_1=L_a1/L_max1;// Load factor
t=[0 4 4 8 8 12 12 16 16 20 20 24 24];// Time in hrs for load curve
c_1=[200 200 600 600 1000 1000 400 400 200 200 100 100 1600];// Load C_1 in MW for load curve
L_a1=[L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1];// Average load in MW for plot
subplot(3,1,1);
xlabel('hrs');
ylabel('MW');
xtitle('Load curve for C_1');
plot(t',c_1','b',t',L_a1','r');
legend('Load curve','Average');
E=(C_2(1)*(T(2)-T(1)))+(C_2(2)*(T(3)-T(2)))+(C_2(3)*(T(4)-T(3)))+(C_2(4)*(T(5)-T(4)))+(C_2(5)*(T(6)-T(5)))+(C_2(6)*(T(7)-T(6)));// Total energy consumed a day in kWh
L_a2=E/24;// MW
L_max2=800;// MW
LF_2=L_a2/L_max2;
t=[0 0 4 4 8 8 12 12 16 16 20 20 24 24];// Time in hrs for load curve
c_2=[0 800 800 400 400 200 200 200 200 600 600 400 400 1600];// Load C_2 in MW for load curve
L_a2=[L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2];// Average load in MW for plot
subplot(3,1,3);
subplot(3,1,2);
xlabel('hrs');
ylabel('MW');
xtitle('Load curve for C_2');
plot(t',c_2','b',t',L_a2','r');
legend('Load curve','Average');
E=(C_t(1)*(T(2)-T(1)))+(C_t(2)*(T(3)-T(2)))+(C_t(3)*(T(4)-T(3)))+(C_t(4)*(T(5)-T(4)))+(C_t(5)*(T(6)-T(5)))+(C_t(6)*(T(7)-T(6)));// Total energy consumed a day in kWh
L_p=E/24;// MW
L_max=1200;// Maximum load in MW
LF_p=L_p/L_max;// Load factor of the plant
t=[0 0 4 4 8 8 12 12 16 16 20 20 24 24];// Time in hrs for load curve
c_t=[0 1000 1000 1000 1000 1200 1200 600 600 800 800 500 500 1600];// Load C_1+C_2 in MW for load curve
L_a_p=[L_p L_p L_p L_p L_p L_p L_p L_p L_p L_p L_p L_p L_p L_p];// Average load of the plant in MW for plot
subplot(3,1,3);
xlabel('hrs');
ylabel('MW');
xtitle('Load curve of the plant');
plot(t',c_t','b',t',L_a_p','r');
legend('Load curve','Average');
DF=(L_max1+L_max2)/L_max;// Diversity factor
L_min=C_t(6);// MW
n_min=(0.43*(L_min/L_cap)^0.95)*100;// Minimum thermal efficiency
L_max=C_t(3);// MW
n_max=(0.43*(L_max/L_cap)^0.95)*100;// Maximum thermal efficiency
CF=L_p/L_cap;// Capacity factor of the plant
printf('\n(a)Load factor of customer A=%0.4f \n   Load factor of customer B=%0.3f \n(b)Diversity factor of the system=%0.1f \n(c)Minimum thermal efficiency of the plant=%0.0f percentage\n   Maximum thermal efficiency of the plant=%0.1f percentage\n   Capacity factor of the plant=%0.3f',LF_1,LF_2,DF,n_min,n_max,CF);