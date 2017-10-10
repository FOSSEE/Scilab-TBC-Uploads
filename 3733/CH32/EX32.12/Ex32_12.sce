// Example 32_12
clc;funcprot(0);
//Given data
F_l=70/100;// Load factor
F_c=50/100;// Capacity factor
F_u=60/100;// Use factor
MD=20;// Maximum demand in MW

// Calculation
//(a)
L_a=(MD*F_l)*10^3;// Average load in kW
E=L_a*365*24;// Annual energy produced in kW-hrs
//(b)
Pc=(L_a/1000)/F_c;// Plant capacity in MW
Rc=Pc-MD;// Reserve capacity in MW
//(c)
t_1=E/(Pc*10^3*F_u);// hours
T=8760-t_1;// Hours not in service in hrs in a year
printf('\n(a)Annual energy production=%0.3e kW-hrs \n(b)Reserve capacity over and above peak load=%0.0f MW \n(c)Hours not in service=%0.0f hrs in a year',E,Rc,T);
// The answer provided in the textbook is wrong

