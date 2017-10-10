//Example 6_1
clc;clear;
// Given values
y_0=0;// Lower limit of the integral 
y_1=1;// Upper limit of the integral

// Analysis
b=-4*integrate('(y^2)','y',y_1,y_0);
printf("The momentum-flux correction factor for fully developed laminar flow becomes %0.2f \n",b);
