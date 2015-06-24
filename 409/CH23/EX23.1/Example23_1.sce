clear ;
clc;
// Example 23.1
printf('Example 23.1\n\n');
// Page no. 686
// Solution Fig E23.1

// Given
x_Tl = [90,92,97,100] ;// Temperature of saturated liquid- [degree C]
x_Tg = [100,102,107,110] ;// Temperature of saturated vapour- [degree C]
y_Hl = [376.9,385.3,406.3,418.6] ;// Enthalpy change of saturated liquid -[kJ/kg]
y_Hg = [2256.44,2251.2,2237.9,2229.86] ;// Enthalpy change of saturated vapour -[kJ/kg]
plot(x_Tl,y_Hl,x_Tg,y_Hg);
title('Figure E23.1 Change in enthalpy Vs Temperature ');
xlabel('T,degree C');
ylabel('H, kJ/kg');
xgrid(1);