clear;
//clc();

// Example 9.2
// Page: 221
printf("Example-9.2  Page no.-221\n\n");

//***Data***//
// Recieving the VLE data from the example 8.2, we have
x_acetone = 0.05;
x_water = 0.95;
// And the activity coefficient is given by
y_acetone = 7.04;
y_water = 1.01;
// we hve the relation g_E/RT = summation(x_i*log(y_i))
// let C = g_E/RT , so
C = (x_acetone*log(y_acetone)+x_water*log(y_water));
// Now let M = (g_E/RT )/(x_acetone*x_water)
// So
M = C/(x_acetone*x_water);
printf("The value of g_E/RT for acetone-water solution at 1 atm pressure is             %f\n\n",C);
printf(" The value of (g_E/RT)/(x_a*x_b) for acetone-water solution at 1 atm pressure is %f",M);

