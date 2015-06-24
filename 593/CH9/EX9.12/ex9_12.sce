clear;
//clc();

// Example 9.12
// Page: 244
printf("Example-9.12  Page no.-244\n\n");

//***Data***//
y_a = 1.00;
P = 1.00;//[atm]
x_a = 0.231*10^(-4);
// Using the constants for O2 in table A.2 in the Antoine equation , we find the vapour pressure of the oxygen at 25C viz.
p_a = 521.15;//[atm]
// Thus activity coefficient is calculated by rewriting the equation 8.6 and using the above values 
Y_O2 = (y_a*P)/(x_a*p_a);
printf("The activity coefficient of the oxygen in the water is %f",Y_O2);