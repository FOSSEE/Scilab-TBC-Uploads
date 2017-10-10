// Example 18_7
clc;funcprot(0);
// Given data
N=10;// The number of available students
R=5;// The number of ordered groups

// Calculation
// (a)
P_a=(factorial(N))/(factorial(N-R));// P_using each student only once
// (b)
P_b=N^R;// P_using each student more than once
// (c)
P_c=(factorial(N))/(factorial(N-R)*factorial(R));// C_using each student only once
// (d)
P_d=(factorial(N+R-1))/(factorial(N-1)*factorial(R));// C_using each student more than once
// (e)
R_1=4;
R_2=6
P_e=(factorial(N))/((factorial(R_1))*(factorial(R_2)));
printf("\n(a)P_using each student only once=%5.0f groups \n(b)P_using each student more than once=%5.0f groups \n(c)C_using each student only once=%3.0f groups \n(d)C_using each student more than once=%4.0f groups \n(e)P_4,6=%3.0f groups",P_a,P_b,P_c,P_d,P_e);
