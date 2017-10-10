clc
rk = 14 // Compression ratio
k = 6 // cutoff percentage ratio
rc = k/100*(rk-1)+1
g = 1.4 // Heat capacity ratio
n_diesel = 1-((1/g))*(1/rk^(g-1))*((rc^(g-1))/(rc-1)) // Cycle efficiency
printf("\n Example 13.2\n")
printf("\n Air standard efficiency is %f percent",n_diesel*100)
//The answers vary due to round off error
