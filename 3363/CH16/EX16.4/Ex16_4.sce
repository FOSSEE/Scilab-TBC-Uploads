//Example 16.4, Page 589
clc
// Using formula logb(m)=n
//n=b^n
F=10^(-5.7)
Y=12.3 //yr
d=365//day/yr
h=24//hr/day
m=60//min/hr
s=60//sec/min
T=(Y*d*h*m*s)/0.693
printf("\n The life time is  %e  s",T)