// Example 2.10, page no-121
clear
clc

c=0.57

//(a)
d=0.1
di1=100
di2=1000
c1=c*di1*10/d
c1=ceil(c1)
printf("(a)\nC1=%d pf",c1)

//(b)
c2=c*di2*10/d
printf("\n(b)\nC2=%d pf",c2)

//(c)
ds=0.09
c11=c*di1*10/ds
c12=c*di2*10/ds
printf("\n(c)\nC1 = %.1f pf\nC2 = %d pf",c11,c12)
