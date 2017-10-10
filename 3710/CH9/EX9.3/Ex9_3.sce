//Example 9.3, Page Number 474
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;
n1=2.286 //The Ordinary Refractive Index 
d=6*(10**-3) //Refractive Index Change
n2=n1-d //Difference of the Two

NA=sqrt((n1**2)-(n2**2))

first=1/(4*NA)
first=fpround(first,2)

second=3/(4*NA)
second=fpround(second,2)

mprintf("The Requirement for Single Mode Behaviour becomes:\n");
mprintf("\t%0.2f <= d/lambda <= %0.2f",first,second);//d=5*Lambda for suitable thickness design

//The answer provided in the textbook for the higher region is wrong
