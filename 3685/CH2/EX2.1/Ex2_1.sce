clc
d = 1 // Assumption
l = 1 // Assumption
A_ACDB = (%pi/4)*(1/3)*((1.05*d)^2)*10.5*l - (%pi/4)*(1/3)*d^2*10*l  // Area of ABCD
A_AEFB = (%pi/4)*(1/3)*((1.1*d)^2)*11*l - (%pi/4)*(1/3)*d^2*10*l // Area of AEFB
t = 100*(A_ACDB/A_AEFB)
printf("\n Example 2.1")
printf("\n The straight bore thermometer reading will be  %f degree Celsius.",t)
//The answers vary due to round off error

