clc;
//Example 17.4
//page no 208
printf(" Example 17.4 page no 208\n\n");
//a pump is in process
//given: parabolic pump pressure flow 
//P=a-b*q^2  equation
//a and  b calculate from conditions
a=25
b=5
//then equation becomes P=25-5*q^2
//pressure at 1m^3/s  flow rate
q=1//flow rate,m^3/s
P=a-b*q^2//pressure
printf("\n pressure P=%f kpa",P);
