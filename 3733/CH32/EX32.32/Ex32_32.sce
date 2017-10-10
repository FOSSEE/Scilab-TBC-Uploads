// Example 32_32
clc;funcprot(0);
//Given data
P=100;// MW
T=[0 4 8 12 16 20 24];// Time in hr
L_a=[20 20 80 80 20 20];// Load A in MW
L_b=[30 60 60 60 60 10];// Load B in MW
CV=45000;// kJ/kg
C=10;// Cost in Rs./kg
Sc=10;// Sale cost in Rs./kWh

// Calculation
t=[0 0 4 4 8 8 12 12 16 16 20 20 24 24];// Time in hrs for load curve
L_A=[0 20 20 20 20 80 80 80 80 20 20 20 20 100];// Load A in MW
subplot(2,1,1);
xlabel('Time(hrs)');
ylabel('Load(MW)');
xtitle('Consumer-A');
plot(t,L_A,'b');
L_B=[0 30 30 60 60 60 60 60 60 60 60 10 10 100];
subplot(2,1,2);
xlabel('Time(hrs)');
ylabel('Load(MW)');
xtitle('Consumer-B');
plot(t,L_B,'b');
L_a1=((L_a(1)*(T(3)-T(1)))+(L_a(3)*(T(5)-T(3)))+(L_a(5)*(T(7)-T(5))))/24;// MW
L_max1=80;// MW
LF_1=L_a1/L_max1;
L_a2=((L_b(1)*(T(2)-T(1)))+(L_b(2)*(T(6)-T(2)))+(L_b(6)*(T(7)-T(6))))/24;// MW
L_max2=60;// MW
LF_2=L_a2/L_max2;
//Consider Consumer-A
// Outputs
O_a1=(L_a(1)*(T(3)-T(1)));// MWh
O_a2=(L_a(3)*(T(5)-T(3)));// MWh
O_a3=(L_a(5)*(T(7)-T(5)));// MWh
O_a=O_a1+O_a2+O_a3;// Total output of A in MWh
// n=0.4*L;(given)
n_a1=0.4*(L_a(1)/100);
n_a2=0.4*(L_a(3)/100);
n_a3=0.4*(L_a(5)/100);
// Inputs
I_a1=O_a1/n_a1;// MWh
I_a2=O_a2/n_a2;// MWh
I_a3=O_a3/n_a3;// MWh
I=I_a1+I_a2+I_a3;// Total input in MWh
TI=I*10^3*3600;// kJ/day
m_fa=(TI)/(CV*1000);// Fuel used in tonnes for consumer A in tons/day
//Consider Consumer-B
// Outputs
O_b1=(L_b(1)*(T(2)-T(1)));// MWh
O_b2=(L_b(2)*(T(6)-T(2)));// MWh
O_b3=(L_b(6)*(T(7)-T(6)));// MWh
O_b=O_b1+O_b2+O_b3;// Total output of A in MWh
// n=0.4*L;(given)
n_b1=0.4*(L_b(1)/100);
n_b2=0.4*(L_b(2)/100);
n_b3=0.4*(L_b(6)/100);
// Inputs
I_b1=O_b1/n_b1;// MWh
I_b2=O_b2/n_b2;// MWh
I_b3=O_b3/n_b3;// MWh
I=I_b1+I_b2+I_b3;// Total input in MWh
TI=I*10^3*3600;// kJ/day
m_fb=(TI)/(CV*1000);// Fuel used in tonnes for consumer B in tons/day
A_b=m_fb*10^3*C;// The amount spent towards the fuel B in rupees
C_e=O_b*10^3*Sc;// The charges of energy received from B in rupees
N_p=C_e-A_b;// Net profit in Rs./day
pc=((C_e-A_b)/A_b)*100;// Percentage change in revenue in %
printf('\n(a)Load factor:LF_1=%0.1f \n   Load factor:LF_2=%0.3f \n(b)Fuel used in tonnes for consumer A=%0.0f tons/day \n   Fuel used in tonnes for consumer B=%0.0f tons/day \n(c)Net profit=Rs.%0.1e/day \n(d)Percentage change in revenue=%0.1f percentage',LF_1,LF_2,m_fa,m_fb,N_p,pc);
// The answer provided in the textbook is wrong

