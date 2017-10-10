// Example 32_34
clc;funcprot(0);
//Given data
L_cap=1500;// kW
// n=0.43*(L)^0.48;(given)
T=[0 4 8 12 16 20 24];// Time in hours
L_a=[200 600 1000 400 200 100];// Load in kW
L_b=[800 400 200 200 600 400];// Load in kW
L_t=[1000 1000 1200 600 800 500];// Load in kW
CV=45*10^3;// MJ/kg
Dc=30;// The cost of diesel in Rs./liter
SG=0.85;// Specific gravity
pr=15/100;// The profit required
oc=30/100;// The other costs
n_com=92/100;// Combustion efficiency

// Calculation
t=[0 4 4 8 8 12 12 16 16 20 20 24 24];// Time in hrs for load curve
L_A=[200 200 600 600 1000 1000 400 400 200 200 100 100 1500];// Load A in kW for load curve
subplot(3,1,1);
xlabel('Time in hours');
ylabel('Load in kW');
xtitle('Load of consumer-A');
plot(t,L_A,'b');
legend('Load curve for (A)');
t=[0 0 4 4 8 8 12 12 16 16 20 20 24 24];// Time in hrs for load curve
L_B=[0 800 800 400 400 200 200 200 200 600 600 400 400 1500];// Load B in kW for load curve
subplot(3,1,2);
xlabel('Time in hours');
ylabel('Load in kW');
xtitle('Load of consumer-B');
plot(t,L_B,'b');
legend('Load curve for (B)');
t=[0 0 4 4 8 8 12 12 16 16 20 20 24 24];// Time in hrs for load curve
L_AB=[0 1000 1000 1000 1000 1200 1200 600 600 800 800 500 500 1500];// Load A+B in kW for load curve
subplot(3,1,3);
xlabel('Time in hours');
ylabel('Load in kW');
xtitle('Load of on plant for consumerA and B');
plot(t,L_AB,'b');
legend('Load curve for (A+B)');
//(i)
E=(L_a(1)*(T(2)-T(1)))+(L_a(2)*(T(3)-T(2)))+(L_a(3)*(T(4)-T(3)))+(L_a(4)*(T(5)-T(4)))+(L_a(5)*(T(6)-T(5)))+(L_a(6)*(T(7)-T(6)));// Total energy consumed a day in kWh
L_a1=E/24;// kW
L_max1=1000;// kW
LF_A=L_a1/L_max1;
E=(L_b(1)*(T(2)-T(1)))+(L_b(2)*(T(3)-T(2)))+(L_b(3)*(T(4)-T(3)))+(L_b(4)*(T(5)-T(4)))+(L_b(5)*(T(6)-T(5)))+(L_b(6)*(T(7)-T(6)));// Total energy consumed a day in kWh
L_b1=E/24;// kW
L_max2=800;// kW
LF_B=L_b1/L_max2;
E=(L_t(1)*(T(2)-T(1)))+(L_t(2)*(T(3)-T(2)))+(L_t(3)*(T(4)-T(3)))+(L_t(4)*(T(5)-T(4)))+(L_t(5)*(T(6)-T(5)))+(L_t(6)*(T(7)-T(6)));// Total energy consumed a day in kWh
L_ab=E/24;// kW
L_max=1200;
LF_AB=L_ab/L_max;
PL=((LF_AB-LF_A)/LF_A)*100;// Maximum percentage increase in load factor
DF=(L_max1+L_max2)/L_max;// Diversity factor
O_1=(L_t(1)*(T(3)-T(1)));// kWh
n_1=0.43*(L_t(1)/L_cap)^0.48;
I_1=O_1/n_1;// kWh
O_2=(L_t(3)*(T(4)-T(3)));// kWh
n_2=0.43*(L_t(3)/L_cap)^0.48;
I_2=O_2/n_2;// kWh
O_3=(L_t(4)*(T(5)-T(4)));// kWh
n_3=0.43*(L_t(4)/L_cap)^0.48;
I_3=O_3/n_3;// kWh
O_4=(L_t(5)*(T(6)-T(5)));// kWh
n_4=0.43*(L_t(5)/L_cap)^0.48;
I_4=O_4/n_4;// kWh
O_5=(L_t(6)*(T(7)-T(6)));// kWh
n_5=0.43*(L_t(6)/L_cap)^0.48;
I_5=O_5/n_5;// kWh
I_t=(I_1+I_2+I_3+I_4+I_5)*3600;// Total input in kJ
m_f=I_t/(CV*n_com*24);// kg/hr
V_f=m_f/0.85;// liters/hr
V_f=V_f*24;// liters
C_f=V_f*Dc;// Cost of fuel in Rs./day
Oc=C_f*oc;// The other cost running the plants in Rs./day
Tc=C_f+Oc;// The total cost running the plants in Rs./day
Pr=Tc*pr;// The profit required in Rs./day
Tcs=Tc+Pr;// Total cost of saling the energy generated/day in rupees
O_t=O_1+O_2+O_3+O_4+O_5;// Total energy generated in kWh
Cs=Tcs/O_t;// The cost of sailing the energy in Rs./kWh
printf('\n(i)The individual load factor of consumer A=%0.3f \n   The individual load factor of consumer B=%0.3f \n(ii)Load factor of the system=%0.3f \n    Diversity factor of the system=%0.1f \n(iii)The cost of selling the power=Rs.%0.2f/kWh',LF_A,LF_B,LF_AB,DF,Cs);
// The answer vary due to round off error

