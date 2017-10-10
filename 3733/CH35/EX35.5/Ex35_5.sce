// Example 35_5
clc;funcprot(0);
//Given data
T=[0 10 20 30 40 50 60 70 80 90 100];// Percentage time of a year
L=[36.0 33.2 33 29.8 29.6 29.2 28.5 28.0 22.0 12.0 8.0];// Load in MW
// C_1=48 kW+0.03 kWh
// C_2=36 kW+0.035 kWh
L_b=32;// MW
L_p=7;// MW
A_1=48;
A_2=36;
B_1=0.030;
B_2=0.035;
t=8760;// hours
MD=L(1);// MW

// Calculation
xlabel('TIME IN PERCENT OF YEAR');
ylabel('LOAD IN MW');
xtitle('Fig.Prob.35.5');
plot(T,L,'r');
legend('Load duration curve');
L=(A_1-A_2)/(B_2-B_1);// Time in hours
T=(L/t)*100;// % of a year
// From Fig.Prob.35.5,
P_b=30;// MW
P_p=MD-P_b;// MW
A_b=12.38;// cm^2
A_p=0.38;// cm^2
x=20;// Percentage of time
y=10*10^3;// kW
// For base load plant
Q_b=A_b*((x/100)*t)*y;// kWh
LF_b=(Q_b/(P_b*10^3*t))*100;// Load factor
CF_b=(Q_b/(L_b*10^3*t))*100;// Capacity factor
UF_b=(CF_b/LF_b)*100;// Use factor
// For peak load plant
Q_p=A_p*((x/100)*t)*y;// kWh
LF_p=(Q_p/(P_p*10^3*t))*100;// Load factor
CF_p=(Q_p/(L_p*10^3*t))*100;// Capacity factor
UF_p=(CF_p/LF_p)*100;// Use factor
printf('\nFor Base load plant:Load factor=%0.1f percentage \n                    Capacity factor=%0.0f percentage \n                    Use factorr=%0.1f percentage \nFor peak load plant:Load factor=%0.2f percentage \n                    Capacity factor=%0.3f percentage \n                    Use factor=%0.2f percentage',LF_b,CF_b,UF_b,LF_p,CF_p,UF_p);
// The answer vary due to round off error
