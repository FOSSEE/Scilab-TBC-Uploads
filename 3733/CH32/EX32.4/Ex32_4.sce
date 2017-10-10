// Example 32_4
clc;funcprot(0);
//Given data
L_p=50;// Peak load in MW
F_l=60;// Load factor in %
Cc=1;// The coal consumption kg per kWh
CC=600;// The cost of coal in RS./ton of coal
E_s=1;// The energy is sold at Rs./kW-hr

//Calculation
L_a=(L_p*(F_l/100));// Average load in MW
E=L_a*10^3*8760;// Energy generated per year in kW-hrs
C_py=(E*Cc)/1000;// Coal required per year in tons
CC_py=C_py*CC;// Cost of coal per year in rupees
C_e=(E*Cc)/E_s;//Cost of energy sold in rupees
R=E-CC_py;// Revenue earned by the power plant per year in rupees
printf('\n(a)Revenue earned by the power plant per year=%0.4e rupees \n(b)The energy generated per year=%0.3e kW-hr',R,E);
