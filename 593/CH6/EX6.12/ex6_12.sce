clear;
//clc();

// Example 6.12
// Page: 122
printf("Example-6.12  Page no.-122\n\n");

//***Data***//
x_b = 0;
x_a = 1;
// We have
//dv_a/dx_a = 3*x_b^(2)+2*x_b+1
// We have the equation 
// dv_b/dx_a = -(dv_a/dx_a)/(x_b/x_a)
// So
// dv_b/dx_a = -(x_a/x_b)*(3*x_b^(2)+2*x_b+1) 
//dv_b_by_dx_a = -x_a*(3*x_b+2+1)/x_b;
printf("Value of the dv_b/dx_a at x_b = 0 is minus infinity");