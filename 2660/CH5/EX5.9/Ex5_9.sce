clc
e = 20 // M,A.R.R.
i = e // interest rste
i = i/100 
n = 5 // life in years
s = 32000 // annual net savings in Rs
p = 100000 // present worth in Rs
S = 20000 // salvage value in Rs
a = (p-S)*(i/((1+i)^n-1)) // (p-s)(A/F,e%,n)
E = (s-a)/p // E.R.R.R
printf("\n ERRR = %0.2f percent", E*100)
disp("Since E.R.R.R is > M.A.R.R. therefore project is feasible.")
