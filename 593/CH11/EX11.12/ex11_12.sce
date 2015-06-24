clear;
//clc();

// Example 11.12
// Page: 298
printf("Example-11.12  Page no.-298\n\n");

//***Data***//
x_2 = 0.1;

//y_i_1 = (x_i__ideal /x_i_1) , at constant temperature
// From figures 11.15 and 11.16 given in the book (page 298-299) ( or the equations of the lines on those figures, presented in [14] ) we can  compute the values in Table 11.6

// We see that at x_solute = 10% 
// T_m/T for the solution in benzene at which log(x_experimental) = -1 is equal to 1.332
// and that for the solution in CCl4 is equal to 1.288

//Now at the that value of the T_m/T 
x_ideal_benzene = 0.114;
x_ideal_CCl4 = 0.152;


// In benzene the average these compounds is
y_i_1 = x_ideal_benzene/x_2;// corresponding to practically ideal solution

// and in benzene the average of these compounds is 
y_i_2 = x_ideal_CCl4/x_2;// corresponding to mild type II behavior 

printf(" Activity coefficient in benzene corresponding to practically ideal solution is %0.2f\n",y_i_1);
printf(" Activity coefficient in CCl4 corresponding to mild type II behavior         is %0.2f",y_i_2);