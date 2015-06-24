

clc
//initialisation of variables
clear
Q= 400 //cuses
V= 2 //ft/sec
d= 3 //ft
n= 1
g= 32.2 //ft/sec^2
//CALCULATIONS
A= Q/V
w= A/d
W= w-d
P= W+2*d*sqrt(n^2+1)
m= A/P
f= 0.006*(1+(4/m))
C= sqrt(2*g/f)
i= (V/C)^2/m
//RESULTS
printf (' slope = %.5f ',i)

//ANSWER IN TEXTBOOK IS NOT GIVEN IN DECIMALS
