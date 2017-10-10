//chapter 4 Ex 28

clc;
clear;
close;
sumsquares=117; product=54;
Sum=sqrt(sumsquares+2*product); //from the formula (a+b)^2=a^2+b^2+2*a*b
subtract=sqrt(sumsquares-2*product);
value=Sum/subtract;
mprintf("The value of (a+b)/(a-b)=%.0f",value);
