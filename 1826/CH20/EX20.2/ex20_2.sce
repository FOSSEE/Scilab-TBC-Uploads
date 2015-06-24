// Example 20.1, page no-568
clear
clc
h0=0.0306
t1=2.0
t2=3.7
he=h0*(1-((t1^2)/t2^2))
printf("The critical field at %d K is %.5f T",t1,he)
