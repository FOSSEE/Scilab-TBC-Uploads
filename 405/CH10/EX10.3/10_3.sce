clear;
clc;
printf("\t\t\tExample Number 10.3\n\n\n");
// influence of fouling factor
// Example 10.2 (page no.-524-525) 
// solution

// the fouling factor influences the heat transfer coefficient on the inside of the pipe. we have
Rf = 0.0002;
// using 
h_clean = 1961;// [W/square meter degree celsius]
// we obtain 
hi = 1/[Rf+(1/h_clean)];// [W/square meter degree celsius]
printf("the percent reduction because of fouling factor is %f ",(h_clean-hi)*100/h_clean);
