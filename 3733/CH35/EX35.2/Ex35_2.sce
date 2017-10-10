// Example 35_2
clc;funcprot(0);
//Given data
// C_1=2500 kW+0.550 kWh
// C_2=2400 kW+0.6 kWh
A_1=2500;
A_2=2400;
B_1=0.55;
B_2=0.6;
MD=100;// Maximum demand in MW
md=10;// Minimum demand in MW
t=8760;// hours

// Calculation
L=(A_1-A_2)/(B_2-B_1);// Time in hours
P_b=MD-((L/t)*(MD-md));// MW
P_p=100-P_b;// MW
// (a)
Ic_b=P_b;// MW
Ic_p=P_p*1.2;// MW
// (b)
// For base load plant
E_g1=((1/2)*(L+t)*(P_b-md))+(md*t);// MW-hrs
LF_b=(E_g1/(P_b*t))*100;// Load factor
CF_b=LF_b;// Capacity factor
UF_b=CF_b/LF_b;// Use factor
// For peak load plant
E_g2=((1/2)*(L)*(MD-P_b));// MW-hrs
LF_p=(E_g2/(P_p*t))*100;// Load factor
CF_p=(E_g2/(24*t))*100;// Capacity factor
UF_p=(CF_p/LF_p)*100;// Use factor
// (c)For I-plant(base)
E_g1=(((1/2)*(L+t)*(P_b-md))+(md*t))*1000;// kW-hrs
C_1=(P_b*10^3*A_1)+(E_g1*B_1);// rupees
// (c)For I-plant(peak)
E_g2=((1/2)*(L)*(P_b-md))*1000;// kWh
C_2=(P_p*10^3*A_2)+(E_g2*B_2);// rupees
E_t=E_g1+E_g2;// kWh
C=C_1+C_2;// Total generating cost in rupees
C_a=C/E_t;// Average cost in Rs./kWh
printf('\nAverage cost=Rs.%0.3f/kWh \nLoad shared by peak load plant=%0.0f MW \nLoad factor(base load plant)=%0.0f percentage \nLoad factor(peak load plant)=%0.1f percentage',C_a,P_p,LF_b,LF_p);
// The answer vary due to round off error
