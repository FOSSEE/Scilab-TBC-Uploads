// Example 32_3
clc;funcprot(0);
//Given data
L_p=30;// The peak load on a power station in MW
L=[25 10 5 7];// Connected load in MW
F_l=50;// Load factor in %

//Calculation
//(a)
L_a=(L_p*(F_l/100));// Average load in MW
//(b)
E=L_a*10^3*8760;// Energy supplied per year in kW-hrs
//(c)
L_c=L(1)+L(2)+L(3)+L(4);// MW
F_d=L_p/L_c;// Demand factor
//(d)
F_div=L_c/L_p;// Diversity factor
printf('\n(a)Average load on the power station=%0.0f MW \n(b)Energy supplied per year=%0.3e kW-hrs \n(c)Demand factor=%0.2f \n(d)Diversity factor=%0.2f',L_a,E,F_d,F_div);
// The answer provided in the textbook is wrong
