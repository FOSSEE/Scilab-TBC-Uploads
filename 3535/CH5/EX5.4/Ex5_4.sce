//Chapter 5, Example 5.4, Page 127
clc
clear
//Time takes for the activity of daughter is within 5% of that of parent
t = -log(1-0.95)/(1.083*10^-2)
printf("\n Time = %f h ",t); 
printf("\n Time = %f d ",t/24);
//Answer may vary due to round off error
