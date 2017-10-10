//Example 3.5, Page Number 123
//Phase Matching Angle
clc;

//The following values have been taken from the table on page no 123
no1=1.4943//no for l=1.06
no2=1.5132//no for l=0.53
nc=1.4712//nc for l=0.53
t2=((no1**-2)-(no2**-2))/((nc**-2)-(no2**-2))
theta=asin(t2)

//Converting it into degrees
degrees=theta * (180/%pi)  //theta is the phase matching angle

mprintf("The Phase matching angle is %d degrees",degrees);
