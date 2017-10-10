// Example 35_1
clc;funcprot(0);
//Given data
MD=100;// Maximum demand in MW
md=20;// Minimum demand in MW
A_1=200;// Rs./kW-year
A_2=50;// Rs./kW-year
B_1=0.05;// Rs./kWh
B_2=0.1;// Rs./kWh

// Calculation
L=(A_1-A_2)/(B_2-B_1);// Time in hours
P_b=MD-((L/8760)*(MD-md));// MW
P_p=100-P_b;// MW
// (b)
Area_STbcS=(1/2)*(1000+8760)*(P_p-md);
Area_bb1c1cb=(8760*md);
LF_b=((Area_STbcS+Area_bb1c1cb)/(P_p*8760))*100;// Load factor
A_aTSa=(1/2)*(3000*P_b);
LF_p=(A_aTSa/(P_p*8760))*100;// Load factor
printf('\nThe load shared by peak load plant=%0.1f MW \nLoad factor(base load)=%0.0f percentage \nLoad factor(peak load plant)=%0.0f percentage',P_p,LF_b,LF_p);
// The answer provided in the textbook is wrong
