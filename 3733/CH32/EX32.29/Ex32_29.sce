// Example 32_29
clc;funcprot(0);
//Given data
L_cap=1200;// MW
T=[0 4 8 12 16 20 22];// hours
C_1=[200 600 1000 400 200 100];// MW
C_2=[800 400 200 200 600 400];// MW
Tl=[1000 1000 1200 600 800 500];// MW

// Calculation
E_1=((C_1(1)*(T(2)-T(1)))+(C_1(2)*(T(3)-T(2)))+(C_1(3)*(T(4)-T(3)))+(C_1(4)*(T(5)-T(4)))+(C_1(5)*(T(6)-T(5)))+(C_1(6)*(T(7)-T(6))));// MW
L_a1=E_1/24;// Average load in MW
L_max1=C_1(3);// Maximum load in MW
LF_1=L_a1/L_max1;// Load factor of the consumer 1
E_2=((C_2(1)*(T(2)-T(1)))+(C_2(2)*(T(3)-T(2)))+(C_2(3)*(T(4)-T(3)))+(C_2(4)*(T(5)-T(4)))+(C_2(5)*(T(6)-T(5)))+(C_2(6)*(T(7)-T(6))));// MW
L_a2=E_2/24;// Average load in MW
L_max2=C_2(5);// Maximum load in MW
LF_2=L_a2/L_max2;// Load factor of the consumer 1
E_t=E_1+E_2;// Total energy consumed by both consumers in MW
AL_p=E_t/24;// Average load of the plant  in MW
LF_p=AL_p/L_cap;// Load factor of the plant
DF_p=(L_max1+L_max2)/L_cap;// Diversity factor of the plant
t_p=[0 0 4 4 8 8 12 12 16 16 20 20 22];// hours
C_1p=[0 200 200 600 600 1000 1000 400 400 200 200 100 100];// MW
C_2p=[0 800 800 400 400 200 200 200 200 600 600 400 400];// MW
T_p=[0 1000 1000 1000 1000 1200 1200 600 600 800 800 500 500];// MW
L_avg1=[L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1 L_a1];
L_avg2=[L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2 L_a2];
AL_p=[AL_p AL_p AL_p AL_p AL_p AL_p AL_p AL_p AL_p AL_p AL_p AL_p AL_p];
subplot(3,1,1);
xlabel('Time in hrs');
ylabel('Load (mw)');
xtitle('Consumes-I 1200 MW');
plot(t_p',C_1p','b',t_p',L_avg1','r-.');
legend('Load curve','AL_1');
subplot(3,1,2);
xlabel('Time in hrs');
ylabel('Load (mw)');
xtitle('Consumes-II 1200 MW');
plot(t_p',C_2p','b',t_p',L_avg2','r-.');
legend('Load curve','AL_2');
subplot(3,1,3);
xlabel('Time in hrs');
ylabel('Load (mw)');
plot(t_p',T_p','b',t_p',AL_p','r-.');
legend('Load curve of the generating plant','AL_p');
//(d)
n_g=40/100;// Overall efficiency of generation 
CV=20000;// kJ/kg
E=E_t/n_g;// Thermal energy generated in the plant in MWh
E=E*10^3*3600;// kJ/hr
C_u=(E/(CV*10^3));// Coal used per hour in tons/hr
C=C_u*30;// tons/day
C=C_u/L_cap;// tons/MW-hr
cc=50/100;// Rs./kg
Cc=(C*10^3*cc)/10^3;// Cost of coal per kWh in rupees
L_am=74.2;// Average load in MW
L_max=120;// Maximum demand in MW
CF=L_am/L_max;// Capacity factor of the plant
printf('\n(a)Load factor of the consumer I=%0.3f \n   Load factor of the consumer II=%0.2f \n(b)Load factor of the plant=%0.2f \n(c)Diversity factor of the plant=%0.1f \n(d)The amount of coal required per day=%0.2f tons/MW-hr',LF_1,LF_2,LF_p,DF_p,C);
// The answer provided in the textbook is wrong
