//Initilization of variables
W=161 //lb
wa=150 //lb
wb=100 //lb
la=2 //ft
lb=4 //ft
//Calculations
//Work Done
T1=wb*lb-wa*la //ft-lb
//Final KE=zero
T2=0 //ft-lb
//Work Done on the system=T2-T1
//Hence the equation becomes
//50x-50x^2+100=0
//where
a=-50
b=50
c=100
//Solution
d=sqrt(b^2-4*a*c) 
x1=(-b+d)/(2*a) //ft
x2=(-b-d)/(2*a) //ft
//Result
clc
printf('The stretch of the spring is %f',x2)
//Here even x1 could have been the solution,but the stretch in the string is elongation not compression hence x2 is the valid answer

