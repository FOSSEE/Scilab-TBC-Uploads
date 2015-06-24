clc
C1 = 2000 // first cost  small tool in Rs
N = 5000 // parts per year
n = 5 // number of batches
S = 50*n // cost of set up
a = 0.15 // saving in labour cost per unit
b = 50/100 // burden applied on direct labour saved
I = 10/100 // interest rate
T = 5/100 // allowance for tax
M = 10/100 // allowance for maintenance
H = C1/((N*a*(1+b))-(C1*(I+T+M))-S) // years
C2 = 1600 // cost of fixture
D = 1/H // allowance for depreciation
V = N*a*(1+b)-C2*(I+T+D+M)-S // profit
printf("\n Number of years taken by fixture of Rs 2000 = %0.2f years\n profit made when fixture of Rs 1600 = Rs %d" , H ,V)
 
