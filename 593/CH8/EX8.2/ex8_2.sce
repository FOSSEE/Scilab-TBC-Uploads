clear;
//clc();

// Example 8.2
// Page: 165
printf("Example-8.2  Page no.-165\n\n");

//***Data***//
P = 1;//[atm]
Temp = 74.8;//[C]
// Here we need to know the vapour pressure p_i correspondding ti the temperatures of each of the values in the table.
// We can estimate them using Antoine equation  by the help of the values given in table A.2(page 418) in the book
// log10(p_i) = A-B/(T+C)
// for acetone the constants are given as
A_a = 7.02447;
B_a = 1161;
C_a = 224;
// So p_acetone is given by
p_acetone = 10^(A_a-B_a/(Temp+C_a));//[mmHg]
// similarily for water the constants are given as
A_w = 7.94917;
B_w = 1657.462;
C_w = 227.02;
// So p_water is given by
p_water = 10^(A_w-B_w/(Temp+C_w));//[mmHg]
// expressing the pressures in atm
p_acetone = p_acetone/760;//[atm]
p_water = p_water/760;//[atm]
// Now from table 8.1 given the book
y_acetone = 0.6381;
x_acetone = 0.05;
y_water = (1-y_acetone);
x_water =(1-x_acetone);
// Hence the liquid-phase activity coefficients for acetone and water are given as
Y_acetone = y_acetone*P/(x_acetone*p_acetone);
//and
Y_water = y_water*P/(x_water*p_water);
printf("Liquid-phase activity coefficient for acetone is %f\n",Y_acetone);
printf(" Liquid-phase activity coefficient for water is   %f\n",Y_water);
