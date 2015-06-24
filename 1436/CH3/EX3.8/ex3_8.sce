// Example 3.8, page no-167
clear
clc

//(a)
r1=2500
r2=1500
n=(r1*r2)/(r1-r2)
printf("(a)\nn = %d rpm",n)

//(b)
N=5
r5=n*r1/((r1*(N-1))+n)
r5=ceil(r5)
printf("\n(b)\nr5=%d",r5)
