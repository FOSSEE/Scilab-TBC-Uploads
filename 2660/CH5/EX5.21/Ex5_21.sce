clc
a = 0.125 //saving in labour cost per unit
b = 0.4 // overhead applied on direct labour saved
D = 1/2 // allowance for depreciation
C = 2400 // first cost
I = 6/100 // interest rate
T = 4/100 // allowance for taxes
M = 10/100 // allowance for maintenance
S = 80 // cost of set up
N = (C*(I+T+D+M)+S)/(a*(1+b)) // pieces per year
t = N*2 // total number of pieces
printf("\n Total number of pieces produced = %d" , t)
// Answers vary due to round off error
