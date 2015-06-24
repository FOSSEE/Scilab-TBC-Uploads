clc
a = 1500 // requirements of components
s = 30 // cost of each set up in Rs
k = 0.2 // charge factor
c = 5 // cost of each part in Rs
N = 5*sqrt(a*s)/(k*c) // economic lot size
printf("\n Economic lot size = %d pieces", N)
S = (N*s)/a // time for each set up in hours
printf("\n Time for each set up = %0.2f hours", S )
// Answers vary due to round off error
