clear;
//clc();

// Example 2.3
// Page: 38
printf("Example-2.3  Page no.-38\n\n");

//***Data***//
T = 500;//[F]
P = 680;//[psi]
// It is reported in the book in the table A.1(page 417) that for water 
// We know that T_r = T/T_c and P_r = P/P_c, so
T_c = 647.1*1.8//[R]
P_c = 220.55*14.51;//[psia]
w = 0.345;
T_r = (T+459.67)/T_c;
P_r = P/P_c;
z_0 = 1+P_r/T_r*(0.083-0.422/T_r^(1.6));
z_1 = P_r/T_r*(0.139-0.172/T_r^(4.2));
z = z_0+w*z_1;
printf("The compressibility factor of steam at the given state is %0.3f",z);
// Based on the steam table (which may be considered as reliable as the experimental data) the value of z is 0.804.
