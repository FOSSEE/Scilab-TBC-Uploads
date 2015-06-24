clc
a = 0.125 // saving in labour cost per unit
b = 0.4 // overhead applied on direct labour saved
D = 1/2 // allowance for depreciation
C = 2400 // first cost
I = 6/100 // interst rate
T = 4/100 // allowance for taxes
M = 10/100 // allowance for maintenance
n = 6 // number of baches
S = 80 // cost of set up
s1 = S*n // total set up cost
N = (C*(I+T+D+M)+s1)/(a*(1+b)) // pieces
t = N*2 // total number of pieces
printf("\n Total number of pieces produced = %d" , t)
// Answers vary due to round off error
